extends GraphNode

func update_state():
	var current_screen = str(OS.get_current_screen())
	$hbox/label.text = current_screen

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
