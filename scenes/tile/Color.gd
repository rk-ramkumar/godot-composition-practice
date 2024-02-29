class_name TileColor extends Node

var model
@export var color: Color

func _ready():
	model = get_parent().get_node("body")
	print("Sd", model)
	color = get_parent().color
	
	setColor(color)

func setColor(newColor: Color) -> void:
	color = newColor
	_updateColor()

func _updateColor() -> void:
	if model.material is ShaderMaterial:
		return
		
	if model.material:
		var newMaterial = StandardMaterial3D.new()
		newMaterial.set_albedo(color)
		model.material = newMaterial
