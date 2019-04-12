extends GraphNode

func update_state():
	var touchscreen_ui_hint = str(OS.has_touchscreen_ui_hint())
	$hbox/label.text = touchscreen_ui_hint

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
