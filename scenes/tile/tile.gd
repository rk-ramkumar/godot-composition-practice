class_name tile extends gameObject

func _updateBody():
	$face and $face.updateFace(_toString(value))
	$body._updateModel()

func _toString(value) -> String:
	return str(value)

func _handleDrag(node, cast):
	position = Vector3(cast.position.x, 2.5, cast.position.z)
