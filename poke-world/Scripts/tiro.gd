
extends Area2D

@export var velocidade: float = 600.0

func _ready() -> void:
	add_to_group("ProjetilGiratina")
	area_entered.connect(_on_area_entered)


func _process(delta: float) -> void:
	position.x += velocidade * delta

	# Apaga o tiro quando sai da tela.
	if position.x > 1200 or position.x < -100:
		queue_free()


func _on_area_entered(area: Area2D) -> void:
	# Atingiu o Arceus.
	if area.is_in_group("Arceus"):
		area.receber_dano()
		queue_free()
		return

	# Atingiu o tiro do Arceus.
	if area.is_in_group("ProjetilArceus"):
		area.queue_free()
		queue_free()


func explodir() -> void:
	queue_free()
