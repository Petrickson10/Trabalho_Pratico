extends Node2D

var cena_tiro
func _ready() -> void:
	cena_tiro = preload("res://Cenas/tiro_arceus.tscn")

func _on_timer_timeout() -> void:
	var tiro = cena_tiro.instantiate()
	tiro.position = Vector2(
		1200,
		randf_range(50, 600)
	)
	add_child(tiro)
