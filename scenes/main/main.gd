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
	width = 1,
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
		"minute": 30
		},
	width = 2,
	position = {
		x = 3,
		y = 3
	}
}

func _ready():
	var tileIns = tileScene.instantiate()
	_setConfig(tileIns, tileConfig)
	
	var slotIns = slotScene.instantiate()
	_setConfig(slotIns, slotConfig)
	
	var numberIns = tileScene.instantiate()
	numberIns.name = "numberTile"
	numberIns.set_script(numberTile)
	_setConfig(numberIns, numberConfig)
	
	var clockIns = tileScene.instantiate()
	clockIns.name = "clockTile"
	clockIns.set_script(clockTile)
	_setConfig(clockIns, clockConfig)
	
	add_child(clockIns)
	add_child(numberIns)
	add_child(slotIns)
	add_child(tileIns)

func _setConfig(node, config):
	node.value = config.value
	node.width  = config.width
	var curPos = config.position
	node.color =  Color(config.get("color","white"))
	node.position = Vector3(curPos.x, 4 ,curPos.y)
