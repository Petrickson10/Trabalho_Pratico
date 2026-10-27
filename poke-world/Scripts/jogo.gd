extends Node2D
@onready var Labirinto: Node2D = $Labirinto
@onready var personagem:CharacterBody2D = $Giratina
@onready var entrada_labirinto: Marker2D =$Labirinto/Marker2D 



func _on_botao_1_pressed() -> void:
	Labirinto.visible = true
	personagem.global_position = entrada_labirinto.global_position
