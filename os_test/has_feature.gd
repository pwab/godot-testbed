extends GraphNode

func update_state():
	var feature = $hbox/lineedit.text
	var has_feature = str(OS.has_feature(feature))
	$hbox/label.text = has_feature

func _on_button_pressed():
	update_state()
	print("[info] ", self.get_name())
