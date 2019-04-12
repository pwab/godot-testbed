extends GraphNode

func update_state():
	var window_minimized = str(OS.is_window_minimized())
	$hbox/label.text = window_minimized

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
