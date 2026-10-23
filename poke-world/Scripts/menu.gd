extends Control

func _on_jogar_pressed() -> void:
<<<<<<< HEAD
	get_tree().change_scene_to_file("res://Cenas/labirinto.tscn")
=======
	get_tree().change_scene_to_file("res://Cenas/jogo.tscn")
>>>>>>> e3ed15fafa8c1514db8e8767976a7c1c26e15a0d

func _on_sair_pressed() -> void:
	get_tree().quit()

func _on_creditos_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/labirinto.tscn")
