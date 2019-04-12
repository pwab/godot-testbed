extends Node

onready var particles_scene = preload("res://particles.tscn")
onready var firework_material = preload("res://firework_material.tres")
onready var godot_texture = preload("res://icon.png")
onready var particles_list = []
onready var user_seed = "I<3Godot"
onready var time_past = 0.0
onready var fps_lock = 30
var fps


func _ready():
	$timer.start()


func in_one_of(x):
	# This returns true in 1 of x attempts
	if (randi() % x + 1) == x:
		return true
	return false


func set_random_particles(particles):
	particles.amount = randi() % 3000 + 1
	particles.lifetime = rand_range(1,100)
	if in_one_of(2):
		particles.one_shot = bool(randi() % 2)
	particles.preprocess = rand_range(0.1,1)
	particles.speed_scale = rand_range(0.01,1.5)
	particles.explosiveness = rand_range(0,1)
	if in_one_of(2):
		particles.explosiveness = randi() % 2
	particles.randomness = rand_range(0,1)
	if in_one_of(2):
		particles.randomness = randi() % 2
	particles.position = Vector2(rand_range(0,1920), rand_range(0,1080))
	if in_one_of(20):
		particles.texture = godot_texture


func set_random_material(process_material):
	#int process_material.trail_divisor
	#CurveTexture process_material.trail_size_modifier
	#GradientTexture process_material.trail_color_modifier
	process_material.emission_shape = randi() % 3
	process_material.emission_sphere_radius = rand_range(0.1,200)
	process_material.emission_box_extents = Vector3(rand_range(1,200), rand_range(1,200), rand_range(1,200))
	
	# --> Not sure how this works:
	#Texture process_material.emission_point_texture
	#Texture process_material.emission_normal_texture
	#Texture process_material.emission_color_texture
	#process_material.emission_point_count = randi() % 5000 + 1
	
	process_material.flag_align_y = bool(randi() % 2)
	process_material.flag_rotate_y = bool(randi() % 2)
	process_material.flag_disable_z = bool(randi() % 2)
	process_material.spread = rand_range(0.1,200)
	process_material.flatness = rand_range(0.1,200)
	
	process_material.gravity = Vector3(rand_range(-10,10), rand_range(-10,10), rand_range(-10,10))
	if in_one_of(5):
		process_material.gravity = Vector3(0, 0, 0)
	
	if in_one_of(5):
		process_material.initial_velocity = rand_range(-20,20)
		process_material.initial_velocity_random = rand_range(0,1)
		process_material.angular_velocity = rand_range(-20,20)
		process_material.angular_velocity_random = rand_range(0,1)
		#Texture process_material.angular_velocity_curve
		process_material.orbit_velocity = rand_range(-20,20)
		process_material.orbit_velocity_random = rand_range(0,1)
		#Texture process_material.orbit_velocity_curve
	
	if in_one_of(5):
		process_material.linear_accel = rand_range(-2,2)
		process_material.linear_accel_random = rand_range(0,1)
		#Texture process_material.linear_accel_curve
		process_material.radial_accel = rand_range(-2,2)
		process_material.radial_accel_random = rand_range(0,1)
		#Texture process_material.radial_accel_curve
		process_material.tangential_accel = rand_range(-2,2)
		process_material.tangential_accel_random = rand_range(0,1)
		#Texture process_material.tangential_accel_curve
		process_material.damping = rand_range(0.1,200)
		process_material.damping_random = rand_range(0,1)
		#Texture process_material.damping_curve
		process_material.angle = rand_range(-2,2)
		process_material.angle_random = rand_range(0,1)
		#Texture process_material.angle_curve
	
	process_material.scale = randi() % 10 + 1
	process_material.scale_random = rand_range(0,1)
	#Texture process_material.scale_curve
	
	process_material.color = Color8(randi() % 256, randi() % 256, randi() % 256, randi() % 256)
	#Texture process_material.color_ramp
	if in_one_of(10):
		process_material.hue_variation = rand_range(0.1,200)
		process_material.hue_variation_random = rand_range(0,1)
	
	#Texture process_material.hue_variation_curve
	#process_material.anim_speed = rand_range(0.1,200)
	#process_material.anim_speed_random = rand_range(0,1)
	#Texture process_material.anim_speed_curve
	#process_material.anim_offset = rand_range(0.1,200)
	#process_material.anim_offset_random = rand_range(0,1)
	#Texture process_material.anim_offset_curve
	#process_material.anim_loop = bool(randi() % 2)


func spawn_random_particles(amount):
	for i in range(amount):
		var particles_reference = Particles2D.new()
		particles_reference.process_material = ParticlesMaterial.new()
		set_random_particles(particles_reference)
		set_random_material(particles_reference.process_material)
		add_child(particles_reference)
		particles_list.append(particles_reference)


func set_firework_particles(particles):
	particles.amount = 2000
	particles.lifetime = 1
	particles.one_shot = false
	particles.speed_scale = 1
	particles.explosiveness = 0.9
	particles.position = Vector2(rand_range(0,1920), rand_range(0,1080))


func spawn_firework(amount):
	for i in range(amount):
		var particles_reference = particles_scene.instance()
		particles_reference.process_material = firework_material
		set_firework_particles(particles_reference)
		add_child(particles_reference)
		particles_list.append(particles_reference)


func get_particles_amount():
	var amount = 0
	for particles in particles_list:
		amount += particles.amount
	return amount
	

func get_time_by_seconds(seconds):
	var real_seconds = int(seconds)
	var minutes = int(real_seconds / 60)
	seconds = int(real_seconds % 60)
	
	var ss = ""
	if seconds < 10:
		ss = "0" + str(seconds)
	else:
		ss = str(seconds)
	
	var mm = ""
	if minutes < 10:
		mm = "0" + str(minutes)
	else:
		mm = str(minutes)
		
	return mm + ":" + ss


func _on_timer_timeout():
	time_past += $timer.wait_time
	fps = Performance.get_monitor(Performance.TIME_FPS)
	
	if fps > fps_lock:
		#spawn_firework(1)
		spawn_random_particles(1)
	else:
		if particles_list.size() > 0:
			particles_list.pop_front().free()
	
	if particles_list.size() > 0:
		$ui/numbers_label.text = str(get_particles_amount()) + '\n' + str(fps) + '\n' + get_time_by_seconds(time_past)
	else:
		$ui/numbers_label.text = "0"


func _on_go_button_up():
	$timer.stop()
	$timer.wait_time = float($ui/wait_time_edit.text)
	fps_lock = int($ui/fps_lock_edit.text)
	user_seed = $ui/seed_edit.text
	
	
	# Clear the particles
	for i in range(particles_list.size()):
		particles_list.pop_front().free()
	
	# Generate the seed
	if user_seed == "":
		randomize()
	else:
		seed(user_seed.hash())
	
	$timer.start()