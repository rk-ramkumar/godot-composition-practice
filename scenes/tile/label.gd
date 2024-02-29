class_name labelFace extends Label3D

@onready var body = get_parent().get_node("body")
var fontSize = 80
var fontColor = modulate

func _ready():
	modulate = fontColor
	font_size = fontSize
	position.y = 0.3
	billboard = BaseMaterial3D.BILLBOARD_ENABLED
	updateValue()

func updateValue():
	text = str(body.value)
