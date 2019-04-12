extends GraphNode

func update_state():
	var keep_screen_on = str(OS.is_keep_screen_on())
	$hbox/label.text = keep_screen_on

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
