"""
TestManual implements auto-generated signals and setters, and uses manual
change handler methods to implement custom behavior and signal emission

This is recommended for objects that need to implement custom on-change
behavior, as well as notifying other objects.
"""

class_name TestManual
extends Node
tool

# boiler:signals

export(bool) var bool_property := true # boiler:export
export(int) var int_property := 2 # boiler:export
export(float) var float_property := 1.0 # boiler:export
export(String) var string_property := "String" # boiler:export
export(Vector2) var vector2_property := Vector2.ONE # boiler:export
export(Vector3) var vector3_property := Vector3.ONE # boiler:export
export(Rect2) var rect2_property := Rect2(Vector2.ZERO, Vector2.ONE) # boiler:export
export(Transform2D) var transform2d_property := Transform2D(45.0, Vector2.ONE) # boiler:export
export(Plane) var plane_property := Plane(1.0, 2.0, 3.0, 4.0) # boiler:export
export(Quat) var quat_property := Quat(Vector3.UP, rad2deg(45.0)) # boiler:export
export(AABB) var aabb_property := AABB(Vector3.ZERO, Vector3.ONE) # boiler:export
export(Basis) var basis_property := Basis.IDENTITY # boiler:export
export(Transform) var transform_property := Transform.IDENTITY # boiler:export
export(Color) var color_property := Color.blanchedalmond # boiler:export

# boiler:setters

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
