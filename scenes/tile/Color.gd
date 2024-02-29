extends Node

@export var model: TileModel
@export var color: Color

func _ready():
	if !model:
		model = get_parent()
	
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
