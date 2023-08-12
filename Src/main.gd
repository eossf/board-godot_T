extends Node2D

@onready var background = %background
@onready var timer_background = %timer_background
@onready var screen_width : float = ProjectSettings.get_setting("display/window/size/viewport_width")
@onready var screen_height : float = ProjectSettings.get_setting("display/window/size/viewport_height")
@onready var screen_size : Vector2 = Vector2(screen_width, screen_height)
@onready var screen_center : Vector2 = screen_size / 2.0
var step_scale : Vector2 = Vector2(0.0005, 0.0005)
var target_scale : Vector2 = Vector2(1.05,1.05)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_pressed():
	pass

func _on_timer_background_timeout():
	print("ok " + str(background.scale) + " target " + str(target_scale))
	if background.scale < target_scale:
		# zoom on background image
		background.scale = background.scale + step_scale
	else:
		timer_background.stop()
