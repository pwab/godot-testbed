extends RigidBody2D

var v_0 = Vector2(0, 0)
export var radius = 5
export var color = Color(0, 0, 0, 1)
onready var screen_size_x = get_parent().screen_size.x
onready var screen_size_y = get_parent().screen_size.x

func _process(delta):
	if position.x > screen_size_x or position.y > screen_size_y:
		free()
	
func _draw():
	draw_circle(v_0, radius, color)