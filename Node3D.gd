extends Node3D

func _ready():
	get_children().map(func(child): 
		child.name = get_parent().name
		child.call_deferred("reparent", get_parent()))
