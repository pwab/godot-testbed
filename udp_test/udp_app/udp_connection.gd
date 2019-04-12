extends Node

signal log_send(log_text)
signal received_data(data)

# IPs
export var IP_CLIENT = "127.0.0.1"
export var IP_SERVER = "127.0.0.1"

# Ports
var PORT_CLIENT = 1509
var PORT_SERVER = 1507

# Socket
var socketUDP = PacketPeerUDP.new()

# Types
enum types {SERVER, CLIENT}
export(types) var type

# Status
export(bool) var active_state = true
export(bool) var run_on_startup = true

func get_time_string():
	var date = OS.get_datetime()
	var time = "{0}:{1}:{2}".format([date["hour"], date["minute"], date["second"]])
	return str(time)

func logging(text):
	var log_text = "[{0}] ".format([get_time_string()]) + str(text)
	emit_signal("log_send", log_text)

func _ready():
	logging("UDP ready")
	if run_on_startup:
		if type == types.CLIENT:
			start_client()
		elif type == types.SERVER:
			start_server()

func _process(delta):
	if active_state:
		if type == types.SERVER:
			if socketUDP.get_available_packet_count() > 0:
				var data = socketUDP.get_packet().get_string_from_ascii()
				logging("Received data from client: " + data)
				emit_signal("received_data", data)
		elif type == types.CLIENT:
			if socketUDP.get_available_packet_count() > 0:
               var data = socketUDP.get_packet().get_string_from_ascii()
               logging("Received data from server: " + data)

func send_packet(data):
	if type == types.CLIENT and active_state:
		if socketUDP.is_listening():
			socketUDP.set_dest_address(IP_SERVER, PORT_SERVER)
			var package = str(data).to_ascii()
			socketUDP.put_packet(package)
			logging("Send " + str(data))

func start_server():
	logging("Start server")
	if socketUDP.listen(PORT_SERVER) != OK:
		logging("Error listening on port: " + str(PORT_SERVER))
	else:
		logging("Listening on port: " + str(PORT_SERVER))
		set_process(true)

func start_client():
	logging("Start client")
	if socketUDP.listen(PORT_CLIENT, IP_SERVER) != OK:
		logging("Error listening on port: " + str(PORT_CLIENT) + " in server: " + IP_SERVER)
	else:
		logging("Listening on port: " + str(PORT_CLIENT) + " in server: " + IP_SERVER)

func close_connection():
	socketUDP.close()
	logging("UDP connection closed")

func _exit_tree():
	close_connection()
