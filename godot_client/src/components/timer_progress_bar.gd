extends Control

signal timer_finished

var start_time

var timer : Timer


func _ready():
	timer = Timer.new()
	add_child(timer)
	timer.timeout.connect(on_timer_timeout)

func start_timer(time: int):
	start_time = time
	timer.start(start_time)

func process(_delta):
	$ProgressBar.value = timer.time_left / start_time


func on_timer_timeout():
	pass