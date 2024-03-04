class_name gameObject extends RigidBody3D

@export var pickable: bool = true
@export var droppable: bool = true
@export var color: Color = Color("white")
@export var width: float = 1:
	get:
		return width
	set(newWidth):
		width = newWidth
		_updateBody()
@export var height: float = 1:
	get:
		return height
	set(newHeight):
		height = newHeight
		_updateBody()
var value:
	get:
		return value
	set(newValue):
		value = newValue
		_updateBody()
var dummy: bool = false

func _updateBody():
	pass

func _handleDrag(node, cast):
	position = Vector3(cast.position.x, 2.5, cast.position.z)
	
func _on_dragable_drag_move(node, cast):
	_handleDrag(node, cast)
 
func _on_dragable_drag_start(node):
	pass

func _on_dragable_drag_stop(node):
	pass
