extends GraphNode

func update_state():
	var cmdline_args = OS.get_cmdline_args().join(", ")
	$hbox/label.text = cmdline_args