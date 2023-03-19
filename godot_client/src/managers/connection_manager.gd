extends Node


var websocket_connection
var player_index = 0
func _ready():
	pass


func _process(_delta):
	if Input.is_action_just_pressed("debug_1"):
		Events.emit_player_joined("player" + str(player_index))
		player_index += 1


func _on_websocket_event(event):
	pass

