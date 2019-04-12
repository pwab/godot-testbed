extends Node2D

onready var step = 0

func _ready():
    ProjectSettings.set_setting("physics/common/physics_fps", 30)
    ProjectSettings.save()

func _physics_process(delta):
    step += 1
    $menu/fps.text = "TIME_FPS: " + str(Performance.get_monitor(Performance.TIME_FPS))
    $menu/step.text = "STEP: " + str(step)