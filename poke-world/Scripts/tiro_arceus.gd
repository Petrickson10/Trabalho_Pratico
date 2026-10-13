
extends Area2D

@export var velocidade: float = 450.0

func _ready() -> void:
	add_to_group("ProjetilArceus")
	body_entered.connect(_on_body_entered)
	area_entered.connect(_on_body_entered)


func _process(delta: float) -> void:
	position.x -= velocidade * delta

	# Apaga o tiro quando sai da tela.
	if position.x < -100 or position.x > 1300:
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	# Atingiu o Giratina.
	if body.is_in_group("Giratina"):
		body.receber_dano()
		queue_free()
		return

	# Atingiu o tiro do Giratina.
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("ProjetilGiratina"):
		area.queue_free()
		queue_free()


func explodir() -> void:
	queue_free()
