extends Node2D

var path = PoolVector2Array()

func _physics_process(delta):
	path.append($mass.position)
	if path.size() > 1000:
		path.remove(0)
	$path.points = path
	
func _on_visibility_screen_exited():
	get_tree().reload_current_scene()
