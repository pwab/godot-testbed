extends GraphNode

func update_state():
	var name = OS.get_name()
	$hbox/label.text = name