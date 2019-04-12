extends RigidBody2D

var scaling_factor = 0.1

func _physics_process(delta):
	print(linear_velocity)
	$velocity_vector.points = PoolVector2Array([Vector2.ZERO, linear_velocity * scaling_factor])