extends Area2D

@onready var Painel_vitoria: Control = $CanvasLayer/ControlMensagem

func _ready() -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Giratina":
		if Painel_vitoria:
			Painel_vitoria.visible = true
		queue_free()
