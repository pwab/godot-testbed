extends GraphNode

func update_state():
	var screen = int($hbox/lineedit.text)
	OS.set_current_screen(screen)
	get_tree().call_group("getters", "update_state")
	
func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
