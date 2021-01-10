extends Button


export (String, FILE) var screenPath: = ""

func _on_button_up() -> void:
	get_tree().change_scene(screenPath)
	
func _get_configuration_warning() -> String:
	return "Scene not set" if screenPath == "" else ""
