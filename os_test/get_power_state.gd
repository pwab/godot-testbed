extends GraphNode

func update_state():
	var power_state = str(OS.get_power_state())
	$hbox/label.text = power_state

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
