extends GraphNode

func update_state():
	var x = int($hbox/lineedit_x.text)
	var y = int($hbox/lineedit_y.text)
	var position = Vector2(x, y)
	OS.set_window_position(position)
	get_tree().call_group("getters", "update_state")
	
func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
