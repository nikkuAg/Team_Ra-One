extends Button


export(String, FILE) var change_scene: = ""


func _on_ChangeSceneButtton_button_up() -> void:
	get_tree().change_scene(change_scene)


func _get_configuration_warning() -> String:
	return "Next Scene part is not set" if change_scene == "" else ""

