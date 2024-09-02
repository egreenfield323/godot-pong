extends CharacterBody2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	self.velocity = Vector2(rng.randi_range(160,210),200)


func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
