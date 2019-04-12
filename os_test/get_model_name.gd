extends GraphNode

func update_state():
	var name = OS.get_model_name()
	$hbox/label.text = name