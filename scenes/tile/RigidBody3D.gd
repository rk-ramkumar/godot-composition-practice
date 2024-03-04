class_name Tile extends RigidBody3D


@onready var collisionShape = $collisionShape
@onready var bodyNode = $body

@export var width: float = 1
@export var height: float = 1
@export var pictures: Array[String]
@export var pickable: bool = true
@export var droppable: bool = true
@export var color: Color = Color("white")

var value:
	get:
		return value
	set(newValue):
		value = newValue
		_updateBody()
var collisionOffset = 2
	
func _updateBody():
	bodyNode = $body
	$face and $face.updateFace()
	updateSize()
	bodyNode._updateModel()

func updateSize(w = width, h = height):
	width = w
	height = h
	
func setCollisionShape():
	collisionShape = $collisionShape
	collisionShape.shape = BoxShape3D.new()
	collisionShape.shape.size = Vector3(width * collisionOffset, 0.5, height * collisionOffset)

func _on_dragable_drag_move(node, cast):
	position = Vector3(cast.position.x, 2.5, cast.position.z)
 
func connectDragEvents(dragable):
#	dragable.connect("drag_start", _on_dragable_drag_start)
#	dragable.connect("drag_stop", _on_dragable_drag_stop)
	dragable.connect("drag_move", _on_dragable_drag_move)
	pass
