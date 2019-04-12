extends GraphNode

func update_state():
	var stdout_verbose = str(OS.is_stdout_verbose())
	$hbox/label.text = stdout_verbose