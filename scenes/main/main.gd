extends Node3D

var tileScene = preload("res://scenes/tile/tile.tscn")
func _ready():
	var tile = tileScene.instantiate()
	tile.width  = 2

	add_child(tile)

func _process(delta):
	pass
