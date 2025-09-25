extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not $TextureRect/Button.pressed.is_connected(_on_button_pressed):
		$TextureRect/Button.pressed.connect(_on_button_pressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$TextureRect/coin.text = str(Global.coins)

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
