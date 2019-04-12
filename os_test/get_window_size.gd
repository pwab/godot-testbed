extends GraphNode

func update_state():
	var window_size = str(OS.get_window_size())
	$hbox/label.text = window_size

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
