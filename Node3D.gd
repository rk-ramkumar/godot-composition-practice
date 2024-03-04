extends Node3D
var target_path = ".."
func _ready():
#	super._ready()
	printt("child", self.get_node(target_path).position)
#	get_children().map(func(child): 
#		child.name = get_parent().name
#		child.call_deferred("reparent", get_parent()))

#func _process(delta):
#	printt("child", target_path)
	
