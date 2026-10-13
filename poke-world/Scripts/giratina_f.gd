extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:
	velocity.x = 0
	velocity.y = 0
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1*SPEED
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1*SPEED
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1*SPEED
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1*SPEED
		
	move_and_slide()
