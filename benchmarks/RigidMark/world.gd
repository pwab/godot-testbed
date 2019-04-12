extends Node

const entity_scene = preload("res://entity.tscn")
var ticks_to_start = 3
const wait_time = 0.03

onready var entities = []
onready var running = false

func spawn_random_entities(amount):
	for i in range(amount):
		var entity_reference = entity_scene.instance()
		entity_reference.set_position(Vector2(rand_range(0,1920), rand_range(40,1040)))
		add_child(entity_reference)
		entities.append(entity_reference)

func _on_timer_timeout():
	if running:
		spawn_random_entities(1)
		$ui/fps_label.text = "Bodies: " + str(entities.size()) + " // FPS: " + str(Performance.get_monitor(Performance.TIME_FPS))
	else:
		if ticks_to_start > 1:
			ticks_to_start = ticks_to_start - 1
			$ui/fps_label.text = str(ticks_to_start)
		else:
			$timer.wait_time = wait_time
			running = true