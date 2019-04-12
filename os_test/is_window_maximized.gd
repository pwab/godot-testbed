extends GraphNode

func update_state():
	# It seems that this doesn't react on user input (title bar) - at least on Windows 7 x64
	var window_maximized = str(OS.is_window_maximized())
	$hbox/label.text = window_maximized

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
