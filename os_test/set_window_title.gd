extends GraphNode

func update_state():
	# Why there is no OS.get_window_title()?
	var window_title = str($hbox/lineedit.text)
	OS.set_window_title(window_title)
	get_tree().call_group("getters", "update_state")
	
func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
