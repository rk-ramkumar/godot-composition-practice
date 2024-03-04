class_name tile extends gameObject

func _updateBody():
	$face and $face.updateFace()
	updateSize()
	$body._updateModel()

func updateSize(w = width, h = height):
	width = w
	height = h

func _on_dragable_drag_move(node, cast):
	position = Vector3(cast.position.x, 2.5, cast.position.z)
 
func _on_dragable_drag_start(node):
	pass

func _on_dragable_drag_stop(node):
	pass

func connectDragEvents(dragable):
#	dragable.connect("drag_start", _on_dragable_drag_start)
#	dragable.connect("drag_stop", _on_dragable_drag_stop)
	dragable.connect("drag_move", _on_dragable_drag_move)
