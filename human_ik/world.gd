extends Node2D

onready var target = get_node("human/target")

func _input(event):
	var direction = Vector2(0,0)
	
	if event.is_action("ui_left"):
		direction.x = -1
	elif event.is_action("ui_right"):
		direction.x = 1
	
	if event.is_action("ui_up"):
		direction.y = -1
	elif event.is_action("ui_down"):
		direction.y = 1
	
	target.set_applied_force(Vector2(0,0))
	target.add_force(Vector2(0,0), direction)
