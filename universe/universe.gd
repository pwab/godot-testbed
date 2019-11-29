extends Node2D

func _ready():
	$simulation.add_object($object1)
	$simulation.add_object($object2)

func _process(delta):
	$simulation.simulate()
	print("Object1 ", $object1.coordinates)
	print("Object2 ", $object2.coordinates)