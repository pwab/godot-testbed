extends Node2D

# Some helpers
onready var vector_0 = Vector2(0,0)
onready var cell_scene = preload("res://cell.tscn")
onready var cells = []


func _ready():
	console_log(">", "Ready :)")


func console_log(log_string, values=[]):
	var logging = ""
	if log_string == ">":
		for s in values:
			logging = logging + str(s)
	elif log_string == "amount_of_cells":
		logging = "Cells:" + " " + str(cells.size())
	elif log_string == "impuls":
		logging = "Impulsed at" + " " + str(values[0])
	
	# Log to Godot console
	print(logging)
	
	# Log to ingame console
	$ui/menu/vbox/console.text = $ui/menu/vbox/console.text + logging + "\n"
	$ui/menu/vbox/console.cursor_set_line($ui/menu/vbox/console.get_line_count())


func reproduce_cells():
	var temp_cells = []
	for cell in cells:
		var cell_reference = cell_scene.instance()
		cell_reference.set_position(cell.get_position() + Vector2(rand_range(0,10), rand_range(0,10)))
		$ui/body.add_child(cell_reference)
		temp_cells.append(cell_reference)
	
	for cell_reference in temp_cells:
		cells.append(cell_reference)


func spawn_random_cells(amount):
	for i in range(amount):
		var cell_reference = cell_scene.instance()
		cell_reference.set_position(Vector2(rand_range(50,1030), rand_range(50,1030)))
		$ui/body.add_child(cell_reference)
		cells.append(cell_reference)


func _on_multiple_cells_button_button_up():
	var value = $ui/menu/vbox/spawn_box/spawn_slider.value
	spawn_random_cells(value)
	console_log("amount_of_cells")


func _on_reproduction_button_button_up():
	if cells.size() > 0:
		reproduce_cells()
		console_log("amount_of_cells")


func _on_random_cell_button_button_up():
	spawn_random_cells(1)
	console_log("amount_of_cells")


func _on_move_cells_button_button_up():
	if cells.size() > 0:
		var value = $ui/menu/vbox/move_box/move_slider.value
		for cell in cells:
			cell.apply_impulse(vector_0, Vector2(rand_range(-value,value), rand_range(-value,value)))
		console_log("impuls", [value])


func _on_restart_button_button_up():
	get_tree().change_scene(get_tree().get_current_scene().get_filename())
