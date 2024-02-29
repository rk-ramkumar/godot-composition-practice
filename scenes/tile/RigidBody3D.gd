extends RigidBody3D

@export var width: float = 1
@export var height: float = 1
@onready var collisionShape = $CollisionShape3D
var collisionOffset = 2


func setCollisionShape():
	var collisionShape = $CollisionShape3D
	collisionShape.shape = BoxShape3D.new()
	collisionShape.shape.size = Vector3(width * collisionOffset, 0.5, height * collisionOffset)
