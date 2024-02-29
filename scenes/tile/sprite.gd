class_name spriteFace extends Sprite3D

var image 

func _ready():
	texture = image
	billboard = BaseMaterial3D.BILLBOARD_ENABLED
	position.y = 0.2
