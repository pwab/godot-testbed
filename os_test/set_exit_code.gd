extends GraphNode

func update_state():
	var code = int($hbox/lineedit.text)
	OS.set_exit_code(code)
	get_tree().call_group("getters", "update_state")
	
func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
	