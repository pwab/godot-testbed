extends GraphNode

func update_state():
	var can_draw = str(OS.can_draw())
	$hbox/label.text = can_draw