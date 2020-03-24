class_name BoilerPlugin
extends EditorPlugin
tool

# Constants
const SIGNAL_TEMPLATE = "signal %s_changed()"
const SETGET_TEMPLATE = "setget set_%s"
const SETTER_TEMPLATE = """func set_%s(new_%s) -> void:
	if %s != new_%s:
		%s = new_%s
		%s_changed()
"""
const CHANGE_HANDLER_TEMPLATE = """func %s_changed() -> void:
	emit_signal('%s_changed')
"""

# Private members
var cached_script: Script = null
var cached_source := ""

# Overrides
func _enter_tree() -> void:
	var editor_interface = get_editor_interface()
	var editor_filesystem = editor_interface.get_resource_filesystem()
	editor_filesystem.connect('filesystem_changed', self, 'filesystem_changed')

func _exit_tree() -> void:
	var editor_interface = get_editor_interface()
	var editor_filesystem = editor_interface.get_resource_filesystem()
	editor_filesystem.disconnect('filesystem_changed', self, 'filesystem_changed')

# Slots
func filesystem_changed() -> void:
	var editor_interface = get_editor_interface()
	var script_editor = editor_interface.get_script_editor()
	var current_script = script_editor.get_current_script()
	var current_source = ""

	if current_script.has_source_code():
		current_source = current_script.get_source_code()

	if current_script != cached_script or current_source != cached_source:
		generate_code(current_script)

	cached_script = script_editor.get_current_script()
	cached_source = cached_script.get_source_code()

# Business Logic
func generate_code(script: Script) -> void:
	var script_path = script.get_path()
	var script_source = script.get_source_code()

	# Don't generate code for the code generator
	if script.get_path() == get_script().get_path():
		return

	# Don't generate for non-annotated scripts
	if script_source.find('boiler:') == -1:
		return

	print("Generating code for %s" % script_path)

	var lines = script_source.split('\n')

	# Append 'Gen' to class_name to prevent conflicts
	for l in range(0, lines.size()):
		var line = lines[l]
		if line.find('class_name') != -1:
			var line_comps = line.split(' ')
			for c in range(0, line_comps.size()):
				var comp = line_comps[c]
				if comp == 'class_name':
					line_comps[c + 1] = line_comps[c + 1] + "Gen"
			lines[l] = line_comps.join(' ')

	# Gather lines tagged with boiler:export
	var boiler_export_names := []
	for l in range(0, lines.size()):
		var line = lines[l]
		if line.find('boiler:export') != -1:
			var line_comps = line.split(' ')
			while true:
				var comp = line_comps[0]
				line_comps.remove(0)

				if comp != 'var':
					continue
				else:
					var name = line_comps[0]
					boiler_export_names.append(name)
					break

			var comment_start = line.find('#')
			lines[l] = line.substr(0, comment_start) + SETGET_TEMPLATE % boiler_export_names[-1]

	# Generate signals and setters
	var boiler_export_signals := PoolStringArray()
	var boiler_export_setters := PoolStringArray()
	var boiler_export_change_handlers := PoolStringArray()
	for boiler_export in boiler_export_names:
		boiler_export_signals.append(SIGNAL_TEMPLATE % [boiler_export])
		boiler_export_setters.append(SETTER_TEMPLATE % [
			boiler_export,
			boiler_export,
			boiler_export,
			boiler_export,
			boiler_export,
			boiler_export,
			boiler_export
		])
		boiler_export_change_handlers.append(CHANGE_HANDLER_TEMPLATE % [
			boiler_export,
			boiler_export
		])

	# Replace boiler:signals tag with signal source code
	var joined_signals = boiler_export_signals.join('\n')
	for l in range(0, lines.size()):
		var line = lines[l]
		if line.find('boiler:signals') != -1:
			lines[l] = joined_signals
			break

	# Replace boiler:setters tag with setter source code
	var joined_setters = boiler_export_setters.join('\n')
	for l in range(0, lines.size()):
		var line = lines[l]
		if line.find('boiler:setters') != -1:
			lines[l] = joined_setters
			break

	# Replace boiler:change_handlers tag with change handler source code
	var joined_change_handlers = boiler_export_change_handlers.join('\n')
	for l in range(0, lines.size()):
		var line = lines[l]
		if line.find('boiler:change_handlers') != -1:
			lines[l] = joined_change_handlers
			break

	lines.insert(0, '"""\nGENERATED CODE: DO NOT EDIT\n"""\n')

	# Rejoin line array into script source string
	script_source = lines.join('\n')

	# Create and save script resource
	var generated_script = GDScript.new()
	generated_script.set_source_code(script_source)

	# Save generated script
	var last_slash = script_path.find_last('/')
	var dir = script_path.substr(0, last_slash) + '/'

	var file = script_path.substr(last_slash, -1).substr(1)
	var file_comps = file.split('.')
	var file_name = file_comps[0]
	var file_path = "%s%s.gen.gd" % [dir, file_name]

	generated_script.take_over_path(file_path)
	var err = ResourceSaver.save(file_path, generated_script)
	match err:
		OK:
			print("Saved generated script to %s\n" % file_path)
			generated_script.reload()
		_:
			printerr("Error saving generated script to %s\n" % file_path)
