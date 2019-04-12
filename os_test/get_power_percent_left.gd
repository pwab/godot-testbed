extends GraphNode

func update_state():
	var power_percent_left = str(OS.get_power_percent_left())
	$hbox/label.text = power_percent_left

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
