extends GraphNode

func _ready():
	$hbox/option.add_item("True", 1)
	$hbox/option.add_item("False", 0)

func update_state():
	var enable = bool($hbox/option.get_selected_id())
	OS.set_borderless_window(enable)
	get_tree().call_group("getters", "update_state")
	
func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
