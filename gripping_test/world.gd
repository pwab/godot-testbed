extends Node2D

onready var state = 0
onready var max_state = 3
onready var force = 1000

func _ready():
    check_state()

func check_state():
    print("State ", state)
    if state == 1:
        $mass.mode = RigidBody2D.MODE_RIGID
    elif state == 2:
        $finger1.add_central_force(Vector2.RIGHT * force)
        $finger2.add_central_force(Vector2.LEFT * force)
    elif state == 3:
        $mass.remove_child($mass.get_node("pin"))

func _on_Timer_timeout():
    state += 1
    check_state()
    
    if state == max_state:
        $Timer.stop()
