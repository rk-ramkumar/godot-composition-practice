class_name gameObject extends Node3D

@export var intractions: Dictionary = {
	"draggable": true,
	"droppable": true
}

func _ready():
	if intractions.draggable:
		var draggable = Draggable.new()
		print(draggable)
		get_parent().add_child(draggable)
	
