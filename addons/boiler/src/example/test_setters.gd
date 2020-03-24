"""
TestSetters implements an auto-generated on-change workflow using setters.

Setters are auto-generated, and handler methods are left to the user
to implement.

This allows for highly-customizable on-change response with a minimum of
extra boilerplate, and is recommended for self-contained objects that
need to monitor their own properties, but don't need to notify others on change.
"""

class_name TestSetters
extends Node
tool

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
	print("TestSetters bool property changed: ", bool_property)

func int_property_changed() -> void:
	print("TestSetters Int property changed: ", int_property)

func float_property_changed() -> void:
	print("TestSetters Float property changed: ", float_property)

func string_property_changed() -> void:
	print("TestSetters String property changed: ", string_property)

func vector2_property_changed() -> void:
	print("TestSetters Vector2 property changed: ", vector2_property)

func vector3_property_changed() -> void:
	print("TestSetters Vector3 property changed: ", vector3_property)

func rect2_property_changed() -> void:
	print("TestSetters Rect2 property changed: ", vector3_property)

func transform2d_property_changed() -> void:
	print("TestSetters Transform2D property changed: ", transform2d_property)

func plane_property_changed() -> void:
	print("TestSetters Plane property changed: ", plane_property)

func quat_property_changed() -> void:
	print("TestSetters Quat property changed: ", quat_property)

func aabb_property_changed() -> void:
	print("TestSetters AABB property changed: ", aabb_property)

func basis_property_changed() -> void:
	print("TestSetters Basis property changed: ", basis_property)

func transform_property_changed() -> void:
	print("TestSetters Transform property changed: ", transform_property)

func color_property_changed() -> void:
	print("TestSetters Color property changed: ", color_property)
