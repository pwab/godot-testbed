extends GraphNode

func update_state():
	var executable_path = OS.get_executable_path()
	$hbox/label.text = executable_path