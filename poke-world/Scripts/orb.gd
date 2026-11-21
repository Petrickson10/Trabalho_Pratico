extends Area2D
signal orb_coletada

@export var painel_vitoria: Control

func _ready() -> void:
	if painel_vitoria:
		painel_vitoria.visible = false

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Giratina":
		orb_coletada.emit()
		if painel_vitoria:
			painel_vitoria.visible = true
		
		
