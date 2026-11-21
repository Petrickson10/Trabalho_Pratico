extends Area2D
signal orbe_2_coletada
@onready var personagem:CharacterBody2D = $"../../Giratina"
func _ready() -> void:
	$"../CanvasLayer".visible=false
	
func _on_body_entered(body: Node2D) -> void:
	orbe_2_coletada.emit()
	$"../CanvasLayer".visible=true
	$".".visible=false
