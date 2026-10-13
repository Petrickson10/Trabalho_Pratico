extends Area2D

@export var vida_maxima: int = 2
var vida_atual: int
@onready var label_vida: Label = $"../Vida_A"
@export var velocidade_vertical: float = 180.0
@export var limite_superior: float = 50.0
@export var limite_inferior: float = 598.0
@export var distancia_minima: float = 60.0
@export var distancia_maxima: float = 250.0

var destino_y: float

func _ready() -> void:
	vida_atual = vida_maxima
	atualizar_label_vida()
	escolher_destino()

func atualizar_label_vida() -> void:
	label_vida.text = "Vida Arceus: " + str(vida_atual)

func escolher_destino() -> void:
	var distancia: float = randf_range(
		distancia_minima,
		distancia_maxima
	)

	var direcao: float = [-1.0, 1.0].pick_random()

	destino_y = global_position.y + distancia * direcao

	destino_y = clampf(
		destino_y,
		limite_superior,
		limite_inferior
	)

func _physics_process(delta: float) -> void:
	var diferenca: float = destino_y - global_position.y

	if abs(diferenca) < 2.0:
		escolher_destino()
		return

	var deslocamento: float = min(
		velocidade_vertical * delta,
		abs(diferenca)
	)

	global_position.y += sign(diferenca) * deslocamento

func receber_dano(quantidade: int = 1) -> void:
	vida_atual -= quantidade
	vida_atual = max(vida_atual, 0)
	atualizar_label_vida()

	print("Vida do Arceus: ", vida_atual, "/", vida_maxima)

	if vida_atual <= 0:
		queue_free()
