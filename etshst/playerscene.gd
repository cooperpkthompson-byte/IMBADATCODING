extends CharacterBody2D


const SPEED = 300.0

var rotation_direction = 0
func _physics_process(delta: float) -> void:

	rotation_direction = Input.get_axis("left","right")
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_down", "ui_up")
	if direction:
		velocity = direction * SPEED * transform.x
	else: 
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
