extends MarginContainer

@onready var start_button = %StartButton

func _ready():
	start_button.pressed.connect(on_start_button_pressed)

func on_start_button_pressed():
	Events.emit_scene_change("res://src/scenes/lobby.tscn")