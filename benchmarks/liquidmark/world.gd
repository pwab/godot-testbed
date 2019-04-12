extends Node2D

var atom_scene = preload("res://atom.tscn")
var source_scene = preload("res://source.tscn")
var static_rect_scene = preload("res://static_rect.tscn")

var screen_size = Vector2(	ProjectSettings.get("display/window/size/width"),
							ProjectSettings.get("display/window/size/height") )
var sources = []


func _ready():
	randomize()
	
	for i in range(10):
		spawn_static_rect()
	
	for i in range(5):
		sources.append(spawn_source())


func spawn_static_rect():
	var static_rect_reference = static_rect_scene.instance()
	static_rect_reference.set_position(Vector2(rand_range(500, screen_size.x - 500), rand_range(200, screen_size.y - 200)))
	add_child(static_rect_reference)
	return static_rect_reference


func spawn_source():
	var source_reference = source_scene.instance()
	source_reference.set_position(Vector2(rand_range(500, screen_size.x - 500), rand_range(100, screen_size.y - 400)))
	add_child(source_reference)
	return source_reference


func spawn_atom(pos):
	var atom_reference = atom_scene.instance()
	atom_reference.set_position(pos + Vector2(rand_range(-1, 1), 0))
	add_child(atom_reference)
	return atom_reference


func _on_timer_timeout():
	for source in sources:
		spawn_atom(source.position)
	$ui/fps_label.text = str(Performance.get_monitor(Performance.TIME_FPS))
