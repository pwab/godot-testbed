extends GridContainer

func _on_timer_timeout():
	# Frames per second.
	$fps_label.text = str(Performance.get_monitor(Performance.TIME_FPS))
	
	# Time it took to complete one frame.
	$process_label.text = str(Performance.get_monitor(Performance.TIME_PROCESS))

	# Time it took to complete one physics frame.
	$physics_label.text = str(Performance.get_monitor(Performance.TIME_PHYSICS_PROCESS))
	
	# Number of active RigidBody2D nodes in the game.
	$rigids_label.text = str(Performance.get_monitor(Performance.PHYSICS_2D_ACTIVE_OBJECTS))
	
	# PHYSICS_2D_COLLISION_PAIRS Number of collision pairs in the 2D physics engine.
	$collisions_label.text = str(Performance.get_monitor(Performance.PHYSICS_2D_COLLISION_PAIRS))

	# PHYSICS_2D_ISLAND_COUNT Number of islands in the 2D physics engine.
	$islands_label.text = str(Performance.get_monitor(Performance.PHYSICS_2D_ISLAND_COUNT))