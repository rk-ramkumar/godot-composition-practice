class_name labelFace extends Label3D

@onready var parent = get_parent()
var fontSize = 80
var fontColor = modulate

func _ready():
	set_name.call_deferred("face")
	modulate = fontColor
	font_size = fontSize
	position.y = 0.3
	billboard = BaseMaterial3D.BILLBOARD_ENABLED

func updateFace(value):
	text = value
