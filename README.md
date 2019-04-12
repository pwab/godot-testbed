# [WIP] Godot Testbed
Just a bunch of small tests, benchmarks and little projects for the [Godot Gameengine](https://godotengine.org/).

Please keep in mind that:

- This is a work-in-progress repository (WIP)
- Most of these tests were made in good old Godot 2.x days so there are a lot of possible improvements in code and node structure. I'm totally aware of this. If you have a useful addition don't hesitate to create a PR!
- If you can't understand how this stuff works, open an issue and I will gladly help you out.

---

## Benchmarks

### rigidmark

- Benchmark how much RigidBody2Ds can be handled (collisions as the bottleneck)

### cellmark

- Benchmark how collisions depend on the movement of objects

### liquidmark

- Benchmark for water droplets falling down as rigidbodies
- Needs a water shader that overlaps the bodies

### particles2dmark

- Benchmark how much particles can be calculated at once
- Spawning depends on a seed (so its repeatable)

---

## Projects
### godot_2d_cad
...
### paperdot
...
### universe
...

---

## Tests
### ccd_test
...
### destructable2d
...
### dragger
...
### friction_test
...
### gripping_test
...
### human_ik
...
### leapmotion_tests
...
### material_test
...
### net_class_test
...
### os_test
...
### particles2dtest
...
### rigid_test
...
### screenrecorder
...
### softi
...
### space
...
### sqlite_test
...
### udp_test
...