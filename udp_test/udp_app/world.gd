extends Node2D

export var REGISTERING_TOUCHINPUT = true
export var REGISTERING_ACCELEROMETER = true
export var REGISTERING_GRAVITY = true
export var REGISTERING_GYROSCOPE = true
export var REGISTERING_MAGNETOMETER = true

onready var edit = get_node("ui/edit")
onready var server_button = get_node("ui/buttons/server_button")
onready var client_button = get_node("ui/buttons/client_button")
onready var ip_edit = get_node("ui/connection/ip")
onready var udp = get_node("udp")
onready var point = get_node("point")
onready var sprite = get_node("sprite")

onready var i = 0

func _ready():
	for i in range(13):
		edit.add_item("-")
	
	server_button.connect("pressed", self, "_on_server_button_pressed")
	client_button.connect("pressed", self, "_on_client_button_pressed")
	set_process_input(false)
	set_process(false)

func _input(event):
	if REGISTERING_TOUCHINPUT:
		if event is InputEventMouseMotion:
			udp.send_packet("TCH::" + str(event.position))
		
func _process(delta):
	if REGISTERING_ACCELEROMETER:
		udp.send_packet("ACC::" + str(Input.get_accelerometer()))
	if REGISTERING_GRAVITY:
		udp.send_packet("GRV::" + str(Input.get_gravity()))
	if REGISTERING_GYROSCOPE:
		udp.send_packet("GYR::" + str(Input.get_gyroscope()))
	if REGISTERING_MAGNETOMETER:
		udp.send_packet("MAG::" + str(Input.get_magnetometer()))
	
func set_connection_data():
	udp.IP_SERVER = ip_edit.text

func _on_udp_log_send(log_text):
	edit.set_item_text(i, log_text)
	
	i += 1
	if i > 12:
		i = 0

func _on_server_button_pressed():
	edit.show()
	udp.connect("log_send", self, "_on_udp_log_send")
	udp.connect("received_data", self, "_on_received_data")
	set_connection_data()
	udp.type = udp.types.SERVER
	udp.start_server()
	server_button.disabled = true
	client_button.disabled = true

func _on_received_data(data):
	var data_array = data.split("::")
	var topic = data_array[0]
	var values = data_array[1]
	
	if topic == "TCH":
		var values_array = values.substr(1, values.length() - 2).split(", ")
		point.position = Vector2(values_array[0].to_int(), values_array[1].to_int())/2
	elif topic == "ACC":
		var values_array = values.substr(1, values.length() - 2).split(", ")
		print("ACC: ", values_array)
		#sprite.position.x = 1280/4 + float(values_array[0])*10
		#sprite.position.y = 720/4 + float(values_array[1])*10
	elif topic == "GRV":
		var values_array = values.substr(1, values.length() - 2).split(", ")
		print("GRV: ", values_array)
	elif topic == "GYR":
		var values_array = values.substr(1, values.length() - 2).split(", ")
		print("GYR: ", values_array)
		sprite.rotation_degrees += float(values_array[2])
	elif topic == "MAG":
		var values_array = values.substr(1, values.length() - 2).split(", ")
		print("MAG: ", values_array)

func _on_client_button_pressed():
	set_connection_data()
	udp.type = udp.types.CLIENT
	udp.start_client()
	server_button.disabled = true
	client_button.disabled = true
	set_process_input(true)
	set_process(true)
