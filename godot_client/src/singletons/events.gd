extends Node
# event bus

signal player_joined
signal scene_change
signal player_submitted
signal round_end
signal game_end
signal player_state_change

func emit_player_joined(player: String):
	player_joined.emit(player)


func emit_scene_change(scene: String):
	scene_change.emit(scene)

func emit_player_submitted(player_name, response):
	player_submitted.emit(player_name, response)

func emit_player_state_change():
	player_state_change.emit()
