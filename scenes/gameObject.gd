class_name interaction extends Node3D

@export var intractions: Dictionary = {
	draggable =  true,
	droppable = true
}

func _ready():
	if intractions.draggable:
		var draggable = Draggable.new()
		draggable.name = "draggable"
		get_parent().connectDragEvents(draggable)
		add_sibling.call_deferred(draggable)
	
