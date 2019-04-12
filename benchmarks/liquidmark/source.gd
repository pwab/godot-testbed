extends KinematicBody2D

onready var source_touched = false

func _ready():
	$click_area.connect("input_event", $".", "_on_click_area_input_event")
	$drag_area.connect("input_event", $".", "_on_drag_area_input_event")


func _on_click_area_input_event( viewport, event, shape_idx ):
	if event.is_action_pressed("ui_touch"):
		source_touched = true


func _on_drag_area_input_event( viewport, event, shape_idx ):
	if event.is_action_released("ui_touch"):
		source_touched = false
	
	if source_touched:
		if event is InputEventScreenDrag:
			position = position + event.relative