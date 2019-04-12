extends GraphNode

func update_state():
	var vsync_enabled = str(OS.is_vsync_enabled())
	$hbox/label.text = vsync_enabled

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
