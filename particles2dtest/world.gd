extends Node2D

onready var particles_menu = $ui/margin/ui_vbox/ui_hbox/particles_vbox/particles_menu
onready var material_menu = $ui/margin/ui_vbox/ui_hbox/material_vbox/material_menu
onready var timer_menu = $ui/margin/ui_vbox/random_hbox/settings_grid


func _ready():
	set_material_settings()
	set_particles()


func _on_restart_button_button_up():
	$particles.restart()
	print(">> Restart particles")


func set_particles():
	$particles.emitting = particles_menu.get_node("emitting").pressed
	$particles.amount = int(particles_menu.get_node("amount").text)
	$particles.lifetime = float(particles_menu.get_node("lifetime").text)
	$particles.one_shot = particles_menu.get_node("one_shot").pressed
	$particles.preprocess = float(particles_menu.get_node("preprocess").text)
	$particles.speed_scale = float(particles_menu.get_node("speed_scale").text)
	$particles.explosiveness = float(particles_menu.get_node("explosiveness").text)
	$particles.randomness = float(particles_menu.get_node("randomness").text)


func set_material_settings():
	$particles.process_material.emission_sphere_radius = float(material_menu.get_node("sphere_radius").text)
	$particles.process_material.flag_align_y = material_menu.get_node("flag_align_y").pressed
	$particles.process_material.spread = float(material_menu.get_node("spread").text)
	$particles.process_material.gravity = Vector3(material_menu.get_node("gravity_x").text, material_menu.get_node("gravity_y").text, 0)
	$particles.process_material.scale = float(material_menu.get_node("scale").text)
	$particles.process_material.scale_random = float(material_menu.get_node("scale_random").text)
	$particles.process_material.scale_curve.curve.min_value = float(material_menu.get_node("scale_curve_min").text)
	$particles.process_material.scale_curve.curve.max_value = float(material_menu.get_node("scale_curve_max").text)
	$particles.process_material.color = Color8(int(material_menu.get_node("color_r8").text), 
											int(material_menu.get_node("color_g8").text),
											int(material_menu.get_node("color_b8").text),
											int(material_menu.get_node("color_a8").text))

func _on_set_button_button_up():
	set_material_settings()
	set_particles()
	print(">> Set values")


func _on_reset_button_button_up():
	get_tree().change_scene(get_tree().get_current_scene().get_filename())
	print(">> Reset values")


func _on_random_timer_timeout():
	# set the values of the timer
	$random_timer.wait_time = float(timer_menu.get_node("wait_time").text)
	
	if timer_menu.get_node("material").pressed:
		material_menu.get_node("sphere_radius").text = str(rand_range(50, 450))
		material_menu.get_node("flag_align_y").pressed = bool(randi() % 2)
		material_menu.get_node("spread").text = str(rand_range(0, 100))
		material_menu.get_node("gravity_x").text = str(rand_range(-50, 50))
		material_menu.get_node("gravity_y").text = str(rand_range(-50, 50))
		material_menu.get_node("scale").text = str(rand_range(0, 50))
		material_menu.get_node("scale_random").text = str(rand_range(0, 1))
		material_menu.get_node("scale_curve_min").text = str(rand_range(0, 1))
		material_menu.get_node("scale_curve_max").text = str(rand_range(0, 1))
		material_menu.get_node("color_r8").text = str(randi() % 256)
		material_menu.get_node("color_g8").text = str(randi() % 256)
		material_menu.get_node("color_b8").text = str(randi() % 256)
		material_menu.get_node("color_a8").text = str(randi() % 256)
		set_material_settings()
	
	if timer_menu.get_node("particles").pressed:
		particles_menu.get_node("amount").text = str(randi() % 2000 + 1)
		particles_menu.get_node("lifetime").text = str(rand_range(0.01, 10))
		particles_menu.get_node("preprocess").text = str(rand_range(0.01, 10))
		particles_menu.get_node("speed_scale").text = str(rand_range(0.01, 10))
		particles_menu.get_node("explosiveness").text = str(rand_range(0, 1))
		particles_menu.get_node("randomness").text = str(rand_range(0, 1))
		set_particles()


func _on_random_timer_button_toggled( pressed ):
	if pressed:
		$random_timer.start()
		print(">> Timer is running")
	else:
		$random_timer.stop()
		print(">> Timer stopped")
