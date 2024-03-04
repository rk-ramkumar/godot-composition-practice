class_name gameObject extends RigidBody3D

@export var width: float = 1
@export var height: float = 1
var value:
	get:
		return value
	set(newValue):
		value = newValue
		_updateBody()
@export var pickable: bool = true
@export var droppable: bool = true
@export var color: Color = Color("white")

func _updateBody():
	pass
