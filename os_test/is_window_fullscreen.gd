extends GraphNode

func update_state():
	var window_fullscreen = str(OS.is_window_fullscreen())
	$hbox/label.text = window_fullscreen

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
