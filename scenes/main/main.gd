extends Node3D

var tileScene = preload("res://scenes/tile/tile.tscn")
var slotScene = preload("res://scenes/slot/slot.tscn")
var tileConfig = {
	value = "Hello",
	width = 2,
	position = {
		x = 0,
		y = 0
	}
}
var numberConfig = {
	value = 13,
	width = 2,
	position = {
		x = -3,
		y = 0
	}
}
var slotConfig = {
	value = 10,
	width = 2,
	color = "green",
	position = {
		x = 0,
		y = 3
	}
}
var clockConfig = {
	value = {
		"hour": 1,
		"minute": 09
		},
	width = 2,
	position = {
		x = 3,
		y = 3
	}
}

func _ready():
	var tile = tileScene.instantiate()
	_setConfig(tile, tileConfig)
	
	var slot = slotScene.instantiate()
	_setConfig(slot, slotConfig)
	
	add_child(slot)
	add_child(tile)

func _setConfig(node, config):
	node.value = config.value
	node.width  = config.width
	var curPos = config.position
	node.color =  Color(config.get("color","white"))
	node.position = Vector3(curPos.x, 4 ,curPos.y)
