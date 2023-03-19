extends HBoxContainer

@export var player_card_scene: PackedScene

var players = {}

func remove_all_players():
	for child in get_children():
		remove_child(child)
		child.queue_free()

func _ready():
	print(LobbyManager.get_players())
	remove_all_players()
	for player in LobbyManager.get_players():
		add_player_card(player)
	Events.player_joined.connect(on_player_joined)

func add_player_card(player_name):
	var player_card_instance: PlayerCard = player_card_scene.instantiate()
	add_child(player_card_instance)
	player_card_instance.set_player_name(player_name)
	players[player_name] = player_card_instance


func on_player_joined(player_name: String):
	if player_name:
		add_player_card(player_name)
