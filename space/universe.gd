extends Node2D

var particle_scene = load("res://particle.tscn")
var particle_number = 100
var width = 640
var height = 360

func _ready():
	randomize()
	for i in range(particle_number):
		add_particle_at_random_position()

func add_particle_at_random_position():
	var particle = particle_scene.instance()
	particle.position = Vector2(rand_range(0, width), rand_range(0, height))
	add_child(particle)