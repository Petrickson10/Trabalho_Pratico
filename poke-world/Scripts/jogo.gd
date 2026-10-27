extends Node2D
@onready var Labirinto: Node2D = $Labirinto
@onready var personagem:CharacterBody2D = $Giratina
@onready var entrada_labirinto: Marker2D =$Labirinto/Marker2D 
@onready var ponto_retorno: Marker2D = $Ponto1
@onready var timer_labirinto: Timer = $Timer
var posicao_original: Vector2

func _ready() -> void:
	timer_labirinto.timeout.connect(_on_timer_labirinto_timeout)

func _on_botao_1_pressed() -> void:
	Labirinto.visible = true
	posicao_original = personagem.global_position
	personagem.global_position = entrada_labirinto.global_position
	timer_labirinto.start()
func _on_timer_labirinto_timeout() -> void:
	personagem.global_position = posicao_original
