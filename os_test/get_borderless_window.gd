extends GraphNode

func update_state():
	var borderless_window = str(OS.get_borderless_window())
	$hbox/label.text = borderless_window

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
