extends KinematicBody2D

# We could work with groups and then adding entities to a 'touched' group...
onready var player_touched = false


func _on_area_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("ui_touch"):
		print("Touch on player pressed")
		player_touched = true


func _on_drag_area_input_event( viewport, event, shape_idx ):
	if event.is_action_released("ui_touch"):
		print("Touch on everything released")
		player_touched = false
	
	if player_touched:
		if event is InputEventScreenDrag:
			print("Player gets dragged")
			print("ply:", position)
			print("pos: ", event.position)
			print("rel: ", event.relative)
			print("vel: ", event.speed)
			
			### Moving the player ###
			# With collision
			#move_and_collide(event.relative)
			
			# Without collision
			position = position + event.relative