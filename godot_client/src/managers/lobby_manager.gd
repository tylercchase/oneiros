extends Node


var players = {}

var responses = []
var current_round = 0

func _ready():
	Events.player_joined.connect(on_player_joined)
	Events.player_submitted.connect(on_player_submitted)

func on_player_joined(player: String):
	players[player] = {
		"points": 0,
		"responses": []
	}
	print(players)


func get_players():
	return players.keys() as Array[String]


func on_player_submitted(player_name, response):
	if !responses[current_round]:
		responses[current_round] = []
	responses[current_round].push_back({
		"player": player_name,
		"value": response
	})
