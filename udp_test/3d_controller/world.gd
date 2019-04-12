extends Node

const CAMERA_SPEED = 0.1
onready var camera = get_node("camera")
onready var udp = get_node("udp")
onready var cube = get_node("cube")

func _ready():
	udp.connect("log_send", self, "_on_udp_log_send")
	udp.connect("received_data", self, "_on_received_data")
	udp.type = udp.types.SERVER
	udp.start_server()
	
func _on_udp_log_send(log_text):
	#print(log_text)
	pass

func _on_received_data(data):
	var data_array = data.split("::")
	var topic = data_array[0]
	var values = data_array[1]
	
	# Prepare the values
	var values_array = values.substr(1, values.length() - 2).split(", ")
	
	if topic == "TCH":
		#print("TCH: ", values_array)
		pass
	elif topic == "ACC":
		print("ACC: ", values_array)
		cube.translation.x = values_array[0].to_float()/10
		cube.translation.y = values_array[1].to_float()/10
	elif topic == "GRV":
		#print("GRV: ", values_array)
		pass
	elif topic == "GYR":
		#print("GYR: ", values_array)
		pass
	elif topic == "MAG":
		#print("MAG: ", values_array)
		pass

func _input(event):
	#TODO: Incremental look/movement based on length of the controler stick pressed vector? (GTA car driving)
	var move_direction = Vector3(0,0,0)
	var look_direction = Vector3(0,0,0)
	
	# Movement
	if event.is_action("move_left"):
		move_direction.x -= CAMERA_SPEED
	elif event.is_action("move_right"):
		move_direction.x += CAMERA_SPEED
	
	if event.is_action("move_forward"):
		move_direction.z -= CAMERA_SPEED
	elif event.is_action("move_backward"):
		move_direction.z += CAMERA_SPEED
	
#	if event.is_action("ui_fly"):
#		move_direction.y += CAMERA_SPEED
#	elif event.is_action("ui_land"):
#		move_direction.y -= CAMERA_SPEED


#	# DEADZONE 
#	var deadzone = 0.25
#
#	if event is InputEventJoypadMotion:
#		if event.axis == 0:
#			left_joy_angle.x = event.value
#		elif event.axis == 1:
#			left_joy_angle.y = event.value
#
#	if left_joy_angle.length() <= deadzone:
#		left_joy_angle = Vector2(0, 0)
	
	# Looking
	if event.is_action("look_left"):
		look_direction.x += CAMERA_SPEED
	elif event.is_action("look_right"):
		look_direction.x -= CAMERA_SPEED
		
	if event.is_action("look_up"):
		look_direction.y += CAMERA_SPEED
	elif event.is_action("look_down"):
		look_direction.y -= CAMERA_SPEED
	
	camera.translation += move_direction
	camera.rotation_degrees += look_direction




