extends GraphNode

func update_state():
	var screen = int($hbox/lineedit.text)
	var screen_dpi = str(OS.get_screen_dpi(screen))
	$hbox/label.text = screen_dpi

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
