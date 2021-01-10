extends Node

signal score_updated
signal player_dies

var score: = 0 setget set_score
var death: = 0 setget set_death


func reset() -> void:
	score = 0
	death = 0

func set_score(value: int) -> void:
	score = value
	emit_signal("score_updated")
	
func set_death(value: int) -> void:
	death = value
	emit_signal("player_dies")
