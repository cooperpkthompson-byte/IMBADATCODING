extends CharacterBody2D

var deceleration = 30 
const SPEED = 1000.0
var rotation_speed = 3 
var rotation_direction = 0
func _physics_process(delta: float) -> void:

	rotation_direction = Input.get_axis("ui_left","ui_right")
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_down", "ui_up")
	if direction:
		velocity = direction * SPEED * transform.x
	else: 
		velocity.x = move_toward(velocity.x, 0, deceleration)
		velocity.y = move_toward(velocity.y, 0, deceleration)
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
	
