extends RigidBody2D

var scaling = 0.5
var last_linear_velocity = Vector2(0,0)
var last_linear_acceleration = Vector2(0,0)
var linear_acceleration = Vector2(0,0)

func _physics_process(delta):
	# Calculate Acceleration
	linear_acceleration = (linear_velocity-last_linear_velocity) / delta
	print(name, " LIN_VEL ", linear_velocity)
	print(name, " LIN_ACC ", linear_acceleration)
	
	$velocity_vector.rotation_degrees = -rotation_degrees
	$acceleration_vector.rotation_degrees = -rotation_degrees
	
	if linear_velocity != last_linear_velocity:
		last_linear_velocity = linear_velocity
		if int(linear_velocity.length()) == 0:
			$velocity_vector.points = PoolVector2Array([Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN])
		else:
			$velocity_vector.points = PoolVector2Array([Vector2.ZERO, linear_velocity * scaling])
	
	if linear_acceleration != last_linear_acceleration:
		last_linear_acceleration = linear_acceleration
		if int(linear_acceleration.length()) == 0:
			$acceleration_vector.points = PoolVector2Array([Vector2.LEFT, Vector2.UP, Vector2.RIGHT, Vector2.DOWN])
		else:
			$acceleration_vector.points = PoolVector2Array([Vector2.ZERO, linear_acceleration * scaling])

func _on_mass_body_shape_entered(body_id, body, body_shape, local_shape):
	print("-- Collision")
	print("-- body_id ", body_id)
	print("-- body ", body)
	print("-- body_shape ", body_shape)
	print("-- local_shape ", local_shape)
	
	# UGLY WORKAROUND
	# Dont get this: https://docs.godotengine.org/en/3.1/classes/class_collisionobject2d.html
	#print(body.get_child(1))
	
