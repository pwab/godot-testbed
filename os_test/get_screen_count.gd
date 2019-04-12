extends GraphNode

func update_state():
	var screen_count = str(OS.get_screen_count())
	$hbox/label.text = screen_count

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
