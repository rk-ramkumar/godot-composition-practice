extends RigidBody3D

@export var width: float = 1
@export var height: float = 1
@onready var value 
@onready var color: Color 
@onready var collisionShape = $CollisionShape3D
@onready var body = $body

var collisionOffset = 2

func _init():
	printt("init", get_parent())
	
func _ready():
	printt("ready", get_parent())
#	value = get_parent().value
#	color = get_parent().color
	
func _updateBody():
	$"../face".updateFace()
	updateSize()
	body._updateModel()

func updateSize(w = width, h = height):
	width = w
	height = h
	
func setCollisionShape():
	var collisionShape = $CollisionShape3D
	collisionShape.shape = BoxShape3D.new()
	collisionShape.shape.size = Vector3(width * collisionOffset, 0.5, height * collisionOffset)

func _on_dragable_drag_move(node, cast):
	position = Vector3(cast.position.x, 2.5, cast.position.z)
  
func _on_dragable_drag_stop(node):
	value = 10
	
func connectDragEvents(dragable):
#	dragable.connect("drag_start", _on_dragable_drag_start)
	dragable.connect("drag_stop", _on_dragable_drag_stop)
	dragable.connect("drag_move", _on_dragable_drag_move)
	pass
