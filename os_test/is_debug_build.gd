extends GraphNode

func update_state():
	var debug_build = str(OS.is_debug_build())
	$hbox/label.text = debug_build