extends Area2D

onready var anim_player: AnimationPlayer = $AnimationPlayer
export var nextScene: PackedScene


func _on_Portal_body_entered(body: Node) -> void:
	teleport()


func _get_configuration_warning() -> String:
	return "Next Scene property can't be empty" if not nextScene else ""

func teleport() -> void:
	anim_player.play("fadeIn")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(nextScene)
