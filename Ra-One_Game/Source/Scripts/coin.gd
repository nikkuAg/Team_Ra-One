extends Area2D

onready var anim_player: AnimationPlayer = $AnimationPlayer
export var c_score = 100

func _on_coin_body_entered(body: Node) -> void:
	picked()

func picked() -> void:
	$AnimationPlayer.play()
	PlayerData.score += c_score
	anim_player.play("fade_out")
	$CollisionShape2D.set_deferred("disabled", true)
	
