extends Button

export(String, FILE) var scene: = ""


func _on_SceneChange_button_up() -> void:
	get_tree().change_scene(scene)

func _get_configuration_warning() -> String:
	return "Next Scene part is not set" if scene == "" else ""


