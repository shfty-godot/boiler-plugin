"""
GENERATED CODE: DO NOT EDIT
"""

"""
TestManual implements auto-generated signals and setters, and uses manual
change handler methods to implement custom behavior and signal emission

This is recommended for objects that need to implement custom on-change
behavior, as well as notifying other objects.
"""

class_name TestManualGen
extends Node
tool

signal bool_property_changed()
signal int_property_changed()
signal float_property_changed()
signal string_property_changed()
signal vector2_property_changed()
signal vector3_property_changed()
signal rect2_property_changed()
signal transform2d_property_changed()
signal plane_property_changed()
signal quat_property_changed()
signal aabb_property_changed()
signal basis_property_changed()
signal transform_property_changed()
signal color_property_changed()

export(bool) var bool_property := true setget set_bool_property
export(int) var int_property := 2 setget set_int_property
export(float) var float_property := 1.0 setget set_float_property
export(String) var string_property := "String" setget set_string_property
export(Vector2) var vector2_property := Vector2.ONE setget set_vector2_property
export(Vector3) var vector3_property := Vector3.ONE setget set_vector3_property
export(Rect2) var rect2_property := Rect2(Vector2.ZERO, Vector2.ONE) setget set_rect2_property
export(Transform2D) var transform2d_property := Transform2D(45.0, Vector2.ONE) setget set_transform2d_property
export(Plane) var plane_property := Plane(1.0, 2.0, 3.0, 4.0) setget set_plane_property
export(Quat) var quat_property := Quat(Vector3.UP, rad2deg(45.0)) setget set_quat_property
export(AABB) var aabb_property := AABB(Vector3.ZERO, Vector3.ONE) setget set_aabb_property
export(Basis) var basis_property := Basis.IDENTITY setget set_basis_property
export(Transform) var transform_property := Transform.IDENTITY setget set_transform_property
export(Color) var color_property := Color.blanchedalmond setget set_color_property

func set_bool_property(new_bool_property) -> void:
	if bool_property != new_bool_property:
		bool_property = new_bool_property
		bool_property_changed()

func set_int_property(new_int_property) -> void:
	if int_property != new_int_property:
		int_property = new_int_property
		int_property_changed()

func set_float_property(new_float_property) -> void:
	if float_property != new_float_property:
		float_property = new_float_property
		float_property_changed()

func set_string_property(new_string_property) -> void:
	if string_property != new_string_property:
		string_property = new_string_property
		string_property_changed()

func set_vector2_property(new_vector2_property) -> void:
	if vector2_property != new_vector2_property:
		vector2_property = new_vector2_property
		vector2_property_changed()

func set_vector3_property(new_vector3_property) -> void:
	if vector3_property != new_vector3_property:
		vector3_property = new_vector3_property
		vector3_property_changed()

func set_rect2_property(new_rect2_property) -> void:
	if rect2_property != new_rect2_property:
		rect2_property = new_rect2_property
		rect2_property_changed()

func set_transform2d_property(new_transform2d_property) -> void:
	if transform2d_property != new_transform2d_property:
		transform2d_property = new_transform2d_property
		transform2d_property_changed()

func set_plane_property(new_plane_property) -> void:
	if plane_property != new_plane_property:
		plane_property = new_plane_property
		plane_property_changed()

func set_quat_property(new_quat_property) -> void:
	if quat_property != new_quat_property:
		quat_property = new_quat_property
		quat_property_changed()

func set_aabb_property(new_aabb_property) -> void:
	if aabb_property != new_aabb_property:
		aabb_property = new_aabb_property
		aabb_property_changed()

func set_basis_property(new_basis_property) -> void:
	if basis_property != new_basis_property:
		basis_property = new_basis_property
		basis_property_changed()

func set_transform_property(new_transform_property) -> void:
	if transform_property != new_transform_property:
		transform_property = new_transform_property
		transform_property_changed()

func set_color_property(new_color_property) -> void:
	if color_property != new_color_property:
		color_property = new_color_property
		color_property_changed()


func bool_property_changed() -> void:
	print("TestManual bool property changed: ", bool_property)
	emit_signal("bool_property_changed")

func int_property_changed() -> void:
	print("TestManual Int property changed: ", int_property)
	emit_signal("int_property_changed")

func float_property_changed() -> void:
	print("TestManual Float property changed: ", float_property)
	emit_signal("float_property_changed")

func string_property_changed() -> void:
	print("TestManual String property changed: ", string_property)
	emit_signal("string_property_changed")

func vector2_property_changed() -> void:
	print("TestManual Vector2 property changed: ", vector2_property)
	emit_signal("vector2_property_changed")

func vector3_property_changed() -> void:
	print("TestManual Vector3 property changed: ", vector3_property)
	emit_signal("vector3_property_changed")

func rect2_property_changed() -> void:
	print("TestManual Rect2 property changed: ", vector3_property)
	emit_signal("rect2_property_changed")

func transform2d_property_changed() -> void:
	print("TestManual Transform2D property changed: ", transform2d_property)
	emit_signal("transform2d_property_changed")

func plane_property_changed() -> void:
	print("TestManual Plane property changed: ", plane_property)
	emit_signal("plane_property_changed")

func quat_property_changed() -> void:
	print("TestManual Quat property changed: ", quat_property)
	emit_signal("quat_property_changed")

func aabb_property_changed() -> void:
	print("TestManual AABB property changed: ", aabb_property)
	emit_signal("aabb_property_changed")

func basis_property_changed() -> void:
	print("TestManual Basis property changed: ", basis_property)
	emit_signal("basis_property_changed")

func transform_property_changed() -> void:
	print("TestManual Transform property changed: ", transform_property)
	emit_signal("transform_property_changed")

func color_property_changed() -> void:
	print("TestManual Color property changed: ", color_property)
	emit_signal("color_property_changed")
