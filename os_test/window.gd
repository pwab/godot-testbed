extends Node2D

func update_getters():
	get_tree().call_group("getters", "update_state")

func _ready():
	# Update all the information
	update_getters()
	
	# Update some constant getters
	get_tree().call_group("const_getters", "update_state")
	
	# Start the timer
	$timer.start()
	
	print("[info] ", "Ready! Everything seems to work fine. :)")

func _on_tabs_tab_changed( tab ):
	print("[info] ", "Changed to tab ", tab)

func _on_timer_timeout():
	update_getters()
	# print("[info] ", "Timer Update")
