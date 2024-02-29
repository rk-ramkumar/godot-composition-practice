extends RigidBody3D

@export var width: float = 1
@export var height: float = 1
@export var value = 13
@onready var collisionShape = $CollisionShape3D
@export var color: Color = Color("white")
@onready var face = $face

var collisionOffset = 2

func _updateBody():
	if face:
		face.curFace.updateValue()
	
func setCollisionShape():
	var collisionShape = $CollisionShape3D
	collisionShape.shape = BoxShape3D.new()
	collisionShape.shape.size = Vector3(width * collisionOffset, 0.5, height * collisionOffset)

func _on_dragable_drag_move(node, cast):
	position = Vector3(cast.position.x, 2.5, cast.position.z)
  
func _on_dragable_drag_stop(node):
	_updateBody()
	
func connectDragEvents(dragable):
#	dragable.connect("drag_start", _on_dragable_drag_start)
	dragable.connect("drag_stop", _on_dragable_drag_stop)
	dragable.connect("drag_move", _on_dragable_drag_move)
	pass
