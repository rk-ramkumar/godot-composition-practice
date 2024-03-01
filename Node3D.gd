extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	printt(get_child(0))
	get_child(0).call_deferred("reparent", get_parent())
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
