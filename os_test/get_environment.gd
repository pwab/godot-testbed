extends GraphNode

func update_state():
	var environment = $hbox/lineedit.text
	var get_environment = OS.get_environment(environment)
	$hbox/label.text = get_environment

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
	