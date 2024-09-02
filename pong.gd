extends Node2D
@export var brick_resource: Resource

@export var txtScore: Node

var grid_size: Vector2 = Vector2(17, 8)
var brick_spacing: Vector2 = Vector2(64, 40)

var score = 0

func incrementScore():
	score+=1
	txtScore.text = str(score)

func _ready() -> void:
	
	for y in range(grid_size.y):
		for x in range(grid_size.x):
			var brick = brick_resource.instantiate()
			brick.position = Vector2(x * brick_spacing.x, y * brick_spacing.y)
			brick.position += Vector2(60,95)
			$Bricks.add_child(brick)
