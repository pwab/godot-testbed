extends Node

var step = 0
export var delta_time = 1 #s
var objects = []
const G = 1

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
    pass

func apply_forces(delta):
    # Acceleration by force
    # a = F/m
    
    # New Vel = Old Vel + Acc * time
    # v = a*t + v_0
    
    # New Pos = Old Pos + Vel * time
    # p = v*t + p_0
    pass

func gravity_force(object1, object2):
    var gravity_constant = G * object1.mass * object2.mass
    var distance = object2.coordinates.distance_to(object1.coordinates)
    return gravity_constant / distance * distance.normalized()

func add_object(object):
    if not object in objects:
        objects.append(object)
    else:
        print("[001] Object already included in simulation")