extends Node3D

var tileScene = preload("res://scenes/tile/numberTile.tscn")
func _ready():
	var tile = tileScene.instantiate()
	tile.fontColor = Color("black")
	print(tile.value)
	tile.value = 13
	print(tile.value)
	
	tile.width  = 2
	tile.position = Vector3(5, 2,0)

	add_child(tile)

func _process(delta):
	pass
