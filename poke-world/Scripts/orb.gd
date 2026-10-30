extends Area2D

@export var painel_vitoria: Control

func _ready() -> void:
	if painel_vitoria:
		painel_vitoria.visible = false

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Giratina":
		if painel_vitoria:
			painel_vitoria.visible = true
		
		get_tree().paused = true
		
		queue_free()
