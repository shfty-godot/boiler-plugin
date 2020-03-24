"""
GENERATED CODE: DO NOT EDIT
"""

"""
TestSetters implements an auto-generated on-change workflow using setters.

Setters are auto-generated, and handler methods are left to the user
to implement.

This allows for highly-customizable on-change response with a minimum of
extra boilerplate, and is recommended for self-contained objects that
need to monitor their own properties, but don't need to notify others on change.
"""

class_name TestSettersGen
extends Node
tool

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
