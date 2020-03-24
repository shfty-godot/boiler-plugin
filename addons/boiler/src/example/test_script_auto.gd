"""
TestAuto implements a fully auto-generated on-change workflow.

Signals, setters and change handler methods are all auto-generated,
and wired together with setget declarations in the resulting code.

This is recommended for Resource-derived data classes, as it represents the
minimum amount of code needed to achieve automatic on-change signal emission.

Signal wiring can be handled either in the editor, or through an external
script class.
"""

class_name TestAuto
extends Node
tool

# boiler:signals

export(bool) var bool_property := true # boiler:export
export(int) var int_property := 2 # boiler:export
export(float) var float_property := 1.0 # boiler:export
export(String) var string_property := "String" # boiler:export
export(Vector2) var vector2_property := Vector2.ONE # boiler:export
export(Vector3) var vector3_property := Vector3.ONE # boiler:export
export(Rect2) var rect2_property = Rect2(Vector2.ZERO, Vector2.ONE) # boiler:export
export(Transform2D) var transform2d_property := Transform2D(45.0, Vector2.ONE) # boiler:export
export(Plane) var plane_property := Plane(1.0, 2.0, 3.0, 4.0) # boiler:export
export(Quat) var quat_property := Quat(Vector3.UP, rad2deg(45.0)) # boiler:export
export(AABB) var aabb_property := AABB(Vector3.ZERO, Vector3.ONE) # boiler:export
export(Basis) var basis_property := Basis.IDENTITY # boiler:export
export(Transform) var transform_property := Transform.IDENTITY # boiler:export
export(Color) var color_property := Color.blanchedalmond # boiler:export

# boiler:setters
# boiler:change_handlers
