extends Node2D

var player_in_range: bool = false


func _process(_delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed('interact'):
		print('We are interacting!')

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('player'):
		body.show_interact_prompt()
		player_in_range = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group('player'):
		body.hide_interact_prompt()
		player_in_range = false
