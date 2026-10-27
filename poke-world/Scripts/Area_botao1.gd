extends Area2D

@export var botao: Control

func _ready() -> void:
	if botao:
		botao.visible = false

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Giratina":
		if botao:
			botao.visible = true

func _on_body_exited(body: Node2D) -> void: 
	if body.name == "Giratina":
		if botao:
			botao.visible = false
