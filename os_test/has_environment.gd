extends GraphNode

func update_state():
	var environment = $hbox/lineedit.text
	var has_environment = str(OS.has_environment(environment))
	$hbox/label.text = has_environment

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
