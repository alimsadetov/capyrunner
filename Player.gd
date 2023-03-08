extends KinematicBody2D

var gravity = 1000
var jumpHeight = 400
var velocity = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y-=jumpHeight
		
	velocity.y+=gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
