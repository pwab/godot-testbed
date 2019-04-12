extends RigidBody2D

export(int) var size = 64
export(int) var min_size = 16

func _ready():
#	for i in range(20):
#		yield(get_tree(), "idle_frame")
	contact_monitor = true
	contacts_reported = 1
	connect("body_entered", self, "_on_block_body_enter")

func _on_block_body_enter(a):
	if size >= min_size:
		var width = size / 2
		
		for i in range (0,2):
			var pos = Vector2(position.x - size/4 + (size/2 * i), position.y - size/4)
			var rigid = spawn_rigid_square(pos, width, linear_velocity)
			rigid.size = size / 2
			rigid.mass = mass / 4
		
		for i in range (0,2):
			var pos = Vector2(position.x - size/4 + (size/2 * i), position.y + size/4)
			var rigid = spawn_rigid_square(pos, width, linear_velocity)
			rigid.size = size / 2
			rigid.mass = mass / 4
		
		queue_free()
	else:
		disconnect("body_entered", self, "_on_block_body_enter")

func spawn_rigid_square(pos, width, linear_vel):
	var shape = Polygon2D.new()
	shape.polygon = get_square_polygon(width)
	shape.color = Color(1, 1, 1, 0.3)
	
	var collision = CollisionShape2D.new()
	collision.shape = RectangleShape2D.new()
	collision.shape.extents = Vector2(width/2, width/2)
	
	var mass = collision.shape.extents.x * collision.shape.extents.y / 1000
	
	var rigidbody = spawn_rigidbody("block", pos, shape, collision, mass, linear_vel)
	return rigidbody

func get_square_polygon(width):
	var size = width/2
	var square = Array(PoolVector2Array([
		Vector2(-size, -size),
		Vector2(size, -size),
		Vector2(size, size),
		Vector2(-size, size)
	]))
	return square

func spawn_rigidbody(polygon_name, pos, polygon_shape, collision_shape, mass=1, linear_vel=Vector2(0,0)):
	var rigid_body = RigidBody2D.new()
	
	# Set the standard settings
	rigid_body.name = polygon_name
	rigid_body.position = pos
	rigid_body.friction = 0.5
	rigid_body.bounce = 0.5
	rigid_body.mass = mass
	rigid_body.continuous_cd = RigidBody2D.CCD_MODE_CAST_SHAPE
	rigid_body.linear_velocity = linear_vel
	
	# Add the polygon
	polygon_shape.name = "polygon"
	rigid_body.add_child(polygon_shape)
	
	# Add the collision shape
	#TODO: Errors happen in this step...
	rigid_body.add_child(collision_shape)
	
	# Add the script
	rigid_body.set_script(get_script())
	
	# Add to the world
	get_parent().add_child(rigid_body)
	
	return rigid_body
