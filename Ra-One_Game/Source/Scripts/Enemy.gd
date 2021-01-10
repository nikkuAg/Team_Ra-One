extends "res://Source/Scripts/Actor.gd"

export var e_score =100

func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speed.x


func _on_StompDetector_body_entered(body: Node) -> void:
	if body.global_position.y > get_node("StompDetector").global_position.y:
		return 
	get_node("CollisionShape2D").disabled = true
	die()


func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= -1.0
		$enemy.scale.x *= -1
	_velocity.y = move_and_slide(_velocity, Floor_Normal).y
	

func die() -> void:
	queue_free()
	PlayerData.score += e_score
