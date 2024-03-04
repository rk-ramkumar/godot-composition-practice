class_name tile extends gameObject

func _updateBody():
	$face and $face.updateFace(_toString(value))
	$body._updateModel()

func _toString(value) -> String:
	return str(value)
