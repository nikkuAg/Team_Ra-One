extends Control


onready var result_label: Label = $Result


func _ready() -> void:
	result_label.text = result_label.text % [PlayerData.score, PlayerData.death]
