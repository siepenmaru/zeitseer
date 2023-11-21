extends Control

var point_count = 800
var width = 64
var center = Vector2(0,0)
var radius = 256
const OFFSET = PI/2

func _draw():
	draw_circle(center, radius, Color(0, 0, 0, 0.5))
	var start = time_to_rads(9, 00, 12)
	var end = time_to_rads(13, 30, 12)
	draw_region(start - OFFSET, end - OFFSET, Color(Color.FOREST_GREEN, 0.8))

func draw_region(start, end, color):
	draw_arc(center, radius - width/2., start, end, point_count, color, width, true)
	
func time_to_rads(hours: int, minutes: int, base: int) -> float:
	var elapsed = (hours%base * 60. + minutes) / (base*60)
	var rads = elapsed * TAU
	return rads

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
