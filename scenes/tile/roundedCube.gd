@tool
class_name TileModel extends CSGPolygon3D

@export var root: Node3D 

var offset = 2
var borderRadius = 0.2
	
func _ready():
	root = get_parent()
	_updateModel()

func _updateModel():
	var points = PackedVector2Array()

	var halfWidth = ( root.width * offset) / 2
	var halfHeight = (root.height * offset) / 2

	var topLeft = Vector2(-halfWidth + borderRadius, -halfHeight)
	var topRight = Vector2(halfWidth - borderRadius, -halfHeight)
	var bottomRight = Vector2(halfWidth - borderRadius, halfHeight - borderRadius)
	var bottomLeft = Vector2(-halfWidth + borderRadius, halfHeight - borderRadius)

	points += _getArcPoints(topLeft, borderRadius, 180, 270)
	points.push_back(Vector2(-topLeft.x, topLeft.y - borderRadius))

	points += _getArcPoints(topRight, borderRadius, 270, 360)
	points.push_back(Vector2(topRight.x + borderRadius, -topRight.y - borderRadius))

	points += _getArcPoints(bottomRight, borderRadius, 0, 90)
	points.push_back(Vector2(-bottomRight.x, bottomRight.y + borderRadius))

	points += _getArcPoints(bottomLeft, borderRadius, 90, 180)
	points.push_back(Vector2(bottomLeft.x - borderRadius, -bottomLeft.y - borderRadius))

	set_polygon(points)
	
	root.setCollisionShape()


func _getArcPoints(center: Vector2, radius: float, angleFrom: int, angleTo: int) -> PackedVector2Array:
	var segments = 16
	var points = PackedVector2Array()
	points.push_back(center)

	for i in range(segments + 1):
		var point = deg_to_rad(angleFrom + i * (angleTo - angleFrom) / segments)
		points.push_back(center + Vector2(cos(point), sin(point)) * radius)

	return points
