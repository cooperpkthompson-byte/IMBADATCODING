extends CharacterBody2D

var baseSpeed = 0
var acceleration = 800
var deceleration = 800
const SPEED = 3000.0
var rotation_speed = 3 
var rotation_direction = 0
func _process(delta: float) -> void:

	rotation_direction = Input.get_axis("Left","Right")
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Down", "Up")
	if direction:
		baseSpeed = move_toward(baseSpeed, direction * SPEED, acceleration * delta )  
	else: 
		baseSpeed = move_toward(baseSpeed, 0, deceleration * delta ) 

	rotation += rotation_direction * rotation_speed * delta
	velocity = transform.x * baseSpeed
	
	move_and_slide()
	
