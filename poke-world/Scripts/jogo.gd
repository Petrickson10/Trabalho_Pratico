extends Node2D
@onready var Labirinto: Node2D = $Labirinto



func _on_botao_1_pressed() -> void:
	Labirinto.visible = true
	print("iee")
