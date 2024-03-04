class_name interaction extends Node3D

func _ready():
	if get_owner().pickable:
		var draggable = Draggable.new()
		draggable.name = "draggable"
#		get_parent().connectDragEvents(draggable)
		add_sibling.call_deferred(draggable)


func _on_slot_body_entered(body):
	print(body)
