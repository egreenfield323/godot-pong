extends Area2D

func _on_body_entered(body):
	if body is CharacterBody2D:
		var ball_velocity = body.velocity
		var collision_normal = (body.global_transform.origin - global_transform.origin).normalized()
		body.velocity = ball_velocity.bounce(collision_normal)
		
		get_parent().get_parent().incrementScore()
		
		queue_free()
