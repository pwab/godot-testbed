tool
extends EditorPlugin

# A class member to hold the dock during the plugin lifecycle
var dock
var selected_objects

func _enter_tree():
	# Initialization of the plugin goes here
	# Load the dock scene and instance it
	dock = preload("res://addons/godot_2d_cad/2d_cad.tscn").instance()

	# Add the loaded scene to the docks
	add_control_to_dock(DOCK_SLOT_LEFT_UL, dock)
	# Note that LEFT_UL means the left of the editor, upper-left dock

func _exit_tree():
	# Clean-up of the plugin goes here
	# Remove the dock
	remove_control_from_docks(dock)
	 # Erase the control from the memory
	dock.free()

func _input(event):
	if event.is_pressed():
		selected_objects = get_editor_interface().get_selection().get_selected_nodes()
		#dock.get_node("Button").text = str(selected_objects)