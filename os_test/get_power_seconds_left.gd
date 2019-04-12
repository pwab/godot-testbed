extends GraphNode

func update_state():
	var power_seconds_left = str(OS.get_power_seconds_left())
	$hbox/label.text = power_seconds_left

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
