extends Node2D

@onready var giratina = $GiratinaF
@onready var arceus = $Arceus
@onready var timer_creditos = $TimerCreditos
@onready var timerr = $GeradorInimigos/Timer

func _ready():
	arceus.arceus_derrotado.connect(_on_arceus_derrotado)
	giratina.giratina_derrotado.connect(_on_giratina_derrotado)
func _on_arceus_derrotado():
	timerr.stop()
	$Vitoria/Label.visible = true
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file("res://Cenas/creditos.tscn")

	
func _on_giratina_derrotado():
	timerr.stop()
	$Game_Over/Label.visible=true
	await get_tree().create_timer(5.0).timeout
	$VBoxContainer.visible=true
	

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/menu.tscn")

func _on_button_2_pressed() -> void:
	get_tree().quit()
