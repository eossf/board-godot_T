extends Node2D
@onready var grid = %Grid

@onready var background = %background
@onready var screen_width : float = ProjectSettings.get_setting("display/window/size/viewport_width")
@onready var screen_height : float = ProjectSettings.get_setting("display/window/size/viewport_height")
@onready var screen_size : Vector2 = Vector2(screen_width, screen_height)
@onready var screen_center : Vector2 = screen_size / 2.0

@export var zoom_duration := 1
@export var color_duration := 0.5
@export var zoom_level := 1.1

var char_tex = load("res://Images/720x1008_pixel_board_game-v0.0.0-001-final.png") 

# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = get_tree().create_tween()
	tween.tween_property(%background, "scale", Vector2(zoom_level, zoom_level), zoom_duration).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)
	tween.tween_property(%background, "modulate", Color.LIGHT_GREEN, color_duration)
	background.texture = char_tex
