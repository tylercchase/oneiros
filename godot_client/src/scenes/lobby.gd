extends Control

@export var player_scene: PackedScene

@onready var player_container = %PlayerContainer
@onready var start_button = %StartButton

var player_names : Array[String] = []

func _ready():
	Events.player_joined.connect(on_player_joined)
	%StartButton.pressed.connect(on_start_button_pressed)
	start_button.disabled = true


func on_player_joined(player_name):
	player_names.push_back(player_name)
	if player_names.size() >= 2:
		start_button.disabled = false

func on_start_button_pressed():
	Events.emit_scene_change("res://src/scenes/game_scenes/interactions/writing_scene.tscn")