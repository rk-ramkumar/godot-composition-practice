class_name face extends Node

enum faceName {
	label,
	sprite
}
@export var face: faceName
@export var texture: Texture
@export var fontSize: int = 80
@export var fontColor: Color

var curFace
var faces = {
	faceName.label : buildlabel,
	faceName.sprite : buildSprite
}

func _ready():
	curFace = faces[face].call()
	get_parent().call_deferred("add_child", curFace)

func buildlabel() -> LabelComp:
	var label = LabelComp.new()
	label.name = "label"
	label.fontSize = fontSize
	label.fontColor = fontColor
	
	return label
	
func buildSprite() -> SpriteComp:
	var sprite = SpriteComp.new()
	sprite.name = "sprite"
	sprite.image = texture
	
	return sprite
