extends CharacterBody2D

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
		var direction2D : Vector2
		direction2D = direction * SPEED * transform.x
		velocity.x = move_toward(velocity.x, direction2D.x, acceleration * delta)
		velocity.y = move_toward(velocity.y, direction2D.y, acceleration * delta)  
	else: 
		velocity.x = move_toward(velocity.x, 0, deceleration * delta)
		velocity.y = move_toward(velocity.y, 0, deceleration * delta)

	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
	
