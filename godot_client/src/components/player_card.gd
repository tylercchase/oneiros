extends Control
class_name PlayerCard
@onready var player_name_label : Label = %NameLabel

func set_player_name(user_name: String):
	player_name_label.text = user_name

func toggle_state():
	pass

func set_state():
	pass
