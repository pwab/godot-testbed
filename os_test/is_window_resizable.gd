extends GraphNode

func update_state():
	var window_resizable = str(OS.is_window_resizable())
	$hbox/label.text = window_resizable

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
