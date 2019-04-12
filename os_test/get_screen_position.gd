extends GraphNode

func update_state():
	var screen = int($hbox/lineedit.text)
	var screen_position = str(OS.get_screen_position(screen))
	$hbox/label.text = screen_position

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
