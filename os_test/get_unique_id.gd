extends GraphNode

func update_state():
	var id = OS.get_unique_id()
	$hbox/label.text = id