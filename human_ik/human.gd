############################### TODO ###############################
#
# - Implement backwards bending for deadlock situations
#
# - REFACTOR:
#	- Better naming
#	- Redo functions
#		- Naming
#		- Taking args and kwargs (get rid of globals)
#
# - Later: 
#	- Redo as a class to implement multiple chains at once
#	- Make a standalone node? Or maybe a plugin?
#	- Talk with paper creators and their proceedings
#	- Clear copyright, put on github and reference as Godot demo
#	- Write a tutorial
#
####################################################################

# FABRIK IK-chain-implementation inspired by:
# http://wiki.roblox.com/index.php?title=Inverse_kinematics

extends Node2D

# Settings
const LINE_THICKNESS = 3
const DRAW_LINES = false
const DRAW_INITIAL_VECTORS = false
const DRAW_CURRENT_VECTORS = false
const DRAW_ANGLES = false
const COLOR_LINES = "black"
const COLOR_INITIAL_VECTORS = "blue"
const COLOR_CURRENT_VECTORS = "yellow"
const COLOR_ANGLE_OK = "green"
const COLOR_ANGLE_NOK = "red"
const ANGLE_RADIUS = 50
const MAX_COMPUTING_COUNTER = 20
const MIN_BACKWARD_BENDING = 10

# Reference the joints
onready var body = get_node("body")
onready var shoulder = get_node("shoulder")
onready var base = shoulder.get_node("base")  # Needed for Vector(0,1) calculation (as it is instantiated below shoulder it will always have the same offset)
onready var elbow = get_node("elbow")
onready var wrist = get_node("wrist")
onready var fingertips = get_node("fingertips")
#onready var femur = get_node("femur")
onready var target = get_node("target")

# Define the IK chain
onready var joints = [shoulder, elbow, wrist, fingertips]
onready var origin = shoulder
onready var starting_lines = get_lines()  # needed for polygon rotation  # this could be the initial vectors!?
onready var lines = get_lines()
onready var tolerance = 0.1
onready var total_length = get_total_length()

# Constraints
onready var constrained = true
onready var constrained_joints = [
	shoulder,
	elbow,
	wrist
]
onready var constrained_vectors = [
	[shoulder, base],
	[shoulder, elbow],
	[elbow, wrist]
]
onready var connected_joints = [
	[shoulder, elbow],
	[elbow, wrist],
	[wrist, fingertips]
]
onready var angle_constraints = [
	[-20, 180],
	[-5, 160],
	[-50, 50]
]

onready var initial_vectors = get_initial_vectors()
onready var current_vectors = get_current_vectors()
onready var angles = get_angles()
onready var computing_counter = 0


func _ready():
	set_process(true)

func act():
	solve()
	rotate_around()
	update()

func _process(delta):
	act()

func draw_circle_arc(center, radius, angle_from, angle_to, color, math_positive=false, dotted=false, points=360, thickness=3):
	var points_arc = PoolVector2Array()

	for i in range(points+1):
		var angle_point
		if math_positive:
			angle_point = -angle_from + i*(-angle_to+angle_from)/points
		else:
			angle_point = angle_from + i*(angle_to-angle_from)/points
		var point = center + Vector2(cos(deg2rad(angle_point)), sin(deg2rad(angle_point))) * radius
		points_arc.push_back(point)
	
	for point in range(points):
		if dotted:
			draw_line(points_arc[point], points_arc[point] + (points_arc[point+1] - points_arc[point])/2, color, thickness)
		else:
			draw_line(points_arc[point], points_arc[point+1], color, thickness)

func get_initial_vector(constrained_vector):
	return constrained_vector[1].position - constrained_vector[0].position

func get_current_vector(cjoints):
	return cjoints[1].position - cjoints[0].position

func get_angle(v1, v2):
	return rad2deg(v1.angle_to(v2))

func within_limits(angle, angle_constraints):
	if angle > angle_constraints[0] and angle < angle_constraints[1]:
		return true
	else:
		return false

func get_initial_vectors():
	var _initial_vectors = []
	for i in range(constrained_vectors.size()):
		_initial_vectors.append(get_initial_vector(constrained_vectors[i]))
	return _initial_vectors

func get_current_vectors():
	var _current_vectors = []
	for i in range(connected_joints.size()):
		_current_vectors.append(get_current_vector(connected_joints[i]))
	return _current_vectors

func get_angles():
	var _angles = []
	for i in range(constrained_joints.size()):
		_angles.append(get_angle(current_vectors[i], initial_vectors[i]))
	return _angles

func joints_within_limits():
	var _inbounds = []
	for i in range(constrained_joints.size()):
		var within = within_limits(angles[i], angle_constraints[i])
		_inbounds.append(within)
	return _inbounds

func get_lines():
	var _lines = []
	for i in range(joints.size()-1):
		_lines.append(joints[i+1].position - joints[i].position)
	return _lines

func get_total_length():
	var _total_length = 0
	for line in lines:
		_total_length += line.length()
	return _total_length

func get_delta():
	# Returns delta-length from endeffector to target
	return (joints[joints.size()-1].position - target.position).length()

func rotate_around():
	#TODO: Maybe this could be converted in using the starting vectors for angle difference
	for i in range(joints.size()-1):
		joints[i].get_node("sprite").rotation = starting_lines[i].angle_to(joints[i+1].position - joints[i].position)

func backward():
	# Backward reaching: Set end effector as target
	#TODO: Rename variables to their meanings
	joints[joints.size()-1].position = target.position
	for i in range(joints.size()-2, 0, -1):
		var r = joints[i+1].position - joints[i].position
		var l = lines[i].length() / r.length()
		# Find new joint position
		joints[i].position = (1 - l) * joints[i+1].position + l * joints[i].position
		
		#TODO: As adviced in the second paper - concerning deadlock situations - the chain should be bend here
		if constrained:
			if computing_counter > MIN_BACKWARD_BENDING:
				pass

func forward():
	# Forward reaching: Set root at initial point
	#TODO: Rename variables to their meanings
	joints[0].position = origin.position
	for i in range(joints.size()-1):
		var r = joints[i+1].position - joints[i].position
		var l = lines[i].length() / r.length()
		# Find new joint position
		joints[i+1].position = (1 - l) * joints[i].position + l * joints[i+1].position
		
		# Update angle
		initial_vectors[i] = get_initial_vector(constrained_vectors[i])
		current_vectors[i] = get_current_vector(connected_joints[i])
		angles[i] = get_angle(current_vectors[i], initial_vectors[i])
		
		# Check for constraints
		if constrained:
			if not within_limits(angles[i], angle_constraints[i]):
				var nearest_angle = clamp(angles[i], angle_constraints[i][0], angle_constraints[i][1])
				connected_joints[i][1].position = current_vectors[i].rotated(deg2rad(angles[i] - nearest_angle)) + connected_joints[i][0].position

func solve():
	var distance_to_target = (origin.position - target.position).length()
	
	if distance_to_target > total_length:
		# Target is out of reach
		for i in range(joints.size()-1):
			var residual = target.position - joints[i].position
			var factor = lines[i].length() / residual.length()
			# Find new joint position
			joints[i+1].position = (1 - factor) * joints[i].position + factor * target.position
			
			# Update angle
			initial_vectors[i] = get_initial_vector(constrained_vectors[i])
			current_vectors[i] = get_current_vector(connected_joints[i])
			angles[i] = get_angle(current_vectors[i], initial_vectors[i])
			
			# If the chain is streched to full length the constraints should be considered as well
			if constrained:
				if not within_limits(angles[i], angle_constraints[i]):
					var nearest_angle = clamp(angles[i], angle_constraints[i][0], angle_constraints[i][1])
					connected_joints[i][1].position = current_vectors[i].rotated(deg2rad(angles[i] - nearest_angle)) + connected_joints[i][0].position
	
	else:
		# Target is in reach
		computing_counter = 0
		var delta = get_delta()
		while delta > tolerance:
			backward()
			forward()
			delta = get_delta()
			
			# Prevent deadlock situation by breaking after a few iterations
			computing_counter += 1
			if computing_counter > MAX_COMPUTING_COUNTER:
				break
	
	# Update angles
	initial_vectors = get_initial_vectors()
	current_vectors = get_current_vectors()
	angles = get_angles()

func _draw():
	if DRAW_LINES:
		for i in range(joints.size()-1):
			draw_line(joints[i].position, joints[i+1].position, ColorN(COLOR_LINES), LINE_THICKNESS)

	if DRAW_INITIAL_VECTORS:
		for i in range(constrained_joints.size()):
			draw_line(constrained_joints[i].position, constrained_joints[i].position + initial_vectors[i], ColorN(COLOR_INITIAL_VECTORS), LINE_THICKNESS)
	
	if DRAW_CURRENT_VECTORS:
		for i in range(constrained_joints.size()):
			draw_line(constrained_joints[i].position, constrained_joints[i].position + current_vectors[i], ColorN(COLOR_CURRENT_VECTORS), LINE_THICKNESS)
	
	if DRAW_ANGLES:
		for i in range(constrained_joints.size()):
			var angle_color = COLOR_ANGLE_OK
			if not within_limits(angles[i], angle_constraints[i]):
				angle_color = COLOR_ANGLE_NOK
			
			var start_angle = rad2deg(initial_vectors[i].angle_to(Vector2(1,0)))
			var end_angle = start_angle + angles[i]
			draw_circle_arc(constrained_joints[i].position, ANGLE_RADIUS, start_angle, end_angle, ColorN(angle_color), true)
