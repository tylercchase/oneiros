extends Node
# manages scene transitions

@export var current_scene: Node

func _ready():
	Events.scene_change.connect(on_scene_change)
	print(current_scene)

func on_scene_change(scene_location: String):
	var thing = load(scene_location).instantiate()
	print(thing)
	# thing.change_scene(thing)
	get_parent().remove_child(current_scene)
	get_parent().add_child(thing)
	current_scene = thing
