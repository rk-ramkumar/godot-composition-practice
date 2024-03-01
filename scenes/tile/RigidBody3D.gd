class_name Tile extends RigidBody3D


@onready var collisionShape = $CollisionPolygon3D
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
	
func _init():
	var collision = CollisionPolygon3D.new()
	add_child(collision)
	
func _updateBody():
	$face.updateFace()
	updateSize()
	bodyNode._updateModel()

func updateSize(w = width, h = height):
	width = w
	height = h
	
func setCollisionShape():
	collisionShape = $CollisionPolygon3D
	bodyNode = $body
	collisionShape.polygon = bodyNode.polygon

func _on_dragable_drag_move(node, cast):
	position = Vector3(cast.position.x, 2.5, cast.position.z)
  
func _on_dragable_drag_stop(node):
	value = 10
	
func connectDragEvents(dragable):
#	dragable.connect("drag_start", _on_dragable_drag_start)
	dragable.connect("drag_stop", _on_dragable_drag_stop)
	dragable.connect("drag_move", _on_dragable_drag_move)
	pass
