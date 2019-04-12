extends GraphNode


func _on_restart_button_up():
	print("[info] ", "Restart application")
	get_tree().change_scene(get_tree().get_current_scene().get_filename())


func _on_quit_button_up():
	print("[info] ", "Quit application")
	get_tree().quit()
