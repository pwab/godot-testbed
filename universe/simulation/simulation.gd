extends Node

var step = 0
export var delta_time = 1 #s
var objects = []
const G = 6.67408e-11 #m^3*kg^-1*s^-2

func simulate():
	step += 1
	calculate_forces()
	apply_forces(delta_time)
	return true

func simulate_to_step(to_step):
	while to_step < step:
		simulate()
	return true

func calculate_forces():
	for obj1 in objects:
		obj1.force = Vector2.ZERO
		for obj2 in objects:
			obj1.force = obj1.force + gravity_force(obj1, obj2)

func apply_forces(delta):
	for obj in objects:
		obj.acceleration = obj.force / obj.mass
		obj.velocity += obj.acceleration * delta
		obj.coordinates += obj.velocity * delta

func gravity_force(object1, object2):
	if object1 == object2:
		return Vector2.ZERO
		
	var vector = object2.coordinates - object1.coordinates  
	if vector.length() == 0: #TODO: abs?
		return Vector2.ZERO
		
	var gravity_constant = G * object1.mass * object2.mass
	return gravity_constant / pow(vector.length(), 2) * vector.normalized()

func add_object(object):
	if not object in objects:
		objects.append(object)
	else:
		print("[001] Object already included in simulation")