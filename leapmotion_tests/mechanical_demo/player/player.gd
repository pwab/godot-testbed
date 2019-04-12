extends KinematicBody

# accumulators
var rot_x = 0
var rot_y = 0
var dir = Vector3()
var input_movement_vector = Vector2()

onready var clicked_node = {}

const LOOKAROUND_SPEED = 0.01
const MOVEMENT_SPEED = 10
const SCROLL_SPEED = 50
const FLYING_MODE = true

func _process(delta):
	# Reset
	dir = Vector3()
	input_movement_vector = Vector2()
	
	if Input.is_action_pressed("strafe_forward"):
    	input_movement_vector.y += 1
	elif Input.is_action_pressed("strafe_backward"):
    	input_movement_vector.y -= 1
	
	if Input.is_action_pressed("strafe_left"):
    	input_movement_vector.x -= 1
	elif Input.is_action_pressed("strafe_right"):
    	input_movement_vector.x = 1
	
	input_movement_vector = input_movement_vector.normalized()
	dir += -$camera.get_global_transform().basis.z.normalized() * input_movement_vector.y
	dir += $camera.get_global_transform().basis.x.normalized() * input_movement_vector.x
	
	if not FLYING_MODE:
		dir.y = 0
	
	dir = dir.normalized() * MOVEMENT_SPEED
	move_and_slide(dir)

func _input(event):
	if event is InputEventMouseMotion:
		if event.button_mask == BUTTON_MASK_RIGHT:
			# modify accumulated mouse rotation
			rot_x += event.relative.x * LOOKAROUND_SPEED
			rot_y += event.relative.y * LOOKAROUND_SPEED
			transform.basis = Basis() # reset rotation
			rotate_object_local(Vector3(0, -1, 0), rot_x) # first rotate in Y
			rotate_object_local(Vector3(-1, 0, 0), rot_y) # then rotate in X
	
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.is_pressed():
				print("LMB Clicked")
				var ray_length = 1000
				var from = $camera.project_ray_origin(event.position)
				var to = from + $camera.project_ray_normal(event.position) * ray_length
				var space_state = get_world().get_direct_space_state()
				clicked_node = space_state.intersect_ray(from, to)
				print(clicked_node)
			else:
				print("LMB Released")
				clicked_node = {}
		
		if event.button_index == BUTTON_WHEEL_UP:
			move_and_slide(-$camera.get_global_transform().basis.z.normalized() * SCROLL_SPEED)
		elif event.button_index == BUTTON_WHEEL_DOWN:
			move_and_slide($camera.get_global_transform().basis.z.normalized() * SCROLL_SPEED)
	
	if event is InputEventScreenDrag:
		if not clicked_node.empty():
			var clicked_object = clicked_node["collider"]
			var clicked_position = clicked_node["position"]
			
			#TODO: This is cool but something is still wrong here
			var direction = Vector3(0, 0, 0)
			direction += $camera.get_global_transform().basis.z.normalized() * event.relative.y
			direction += $camera.get_global_transform().basis.x.normalized() * event.relative.x
			
			if clicked_object is RigidBody:
				clicked_object.apply_impulse(clicked_position, direction)
		
		
		