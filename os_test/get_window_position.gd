extends GraphNode

func update_state():
	var window_position = str(OS.get_window_position())
	$hbox/label.text = window_position

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
