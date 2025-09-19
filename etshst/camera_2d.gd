extends Camera2D
var cameraspeed = 2500

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x = move_toward(position.x, %Player.position.x, cameraspeed * delta )
	position.y = move_toward(position.y, %Player.position.y, cameraspeed * delta )
