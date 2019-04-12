extends GraphNode

func update_state():
	var exit_code = str(OS.get_exit_code())
	$hbox/label.text = exit_code