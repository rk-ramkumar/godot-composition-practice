class_name gameObject extends RigidBody3D

@export var width: float = 1
@export var height: float = 1
@export var pickable: bool = true
@export var droppable: bool = true
@export var color: Color = Color("white")
var value:
	get:
		return value
	set(newValue):
		value = newValue
		_updateBody()
var dummy: bool = false

func _updateBody():
	pass
