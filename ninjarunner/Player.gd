extends KinematicBody2D

onready var running = $AnimationPlayer

var gravity = 1000
var jumpHeight = 600
var velocity = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y -= jumpHeight
	elif velocity.y < 0 and not $RayCast2D.is_colliding():
		running.play("Jumping")
	elif velocity.y > 0 and not $RayCast2D.is_colliding(): #если velocity.y > 0 то это взлёт, если < 0 то падение
		running.play("Falling")
	else:
		running.play("Running")
	
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
