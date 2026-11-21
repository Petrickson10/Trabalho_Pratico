extends Node2D
@onready var Labirinto: Node2D = $Labirinto
@onready var personagem:CharacterBody2D = $Giratina
@onready var entrada_labirinto: Marker2D =$Labirinto/Marker2D 
@onready var ponto_retorno: Marker2D = $Ponto1
@onready var timer_labirinto: Timer = $Timer
@onready var orb_labirinto = $Labirinto/Orb
@onready var orbe_masmorra = $Masmorra/Orb2
@onready var label_timer = $Labirinto/CanvasLayer/LabelTimer
@onready var entrada_masmorra: Marker2D = $Masmorra/EntradaMasmorra
@onready var label_mensagem = $CanvasLayer/LabelMensagem
@onready var timer_mensagem = $CanvasLayer/TimerMensagem
var posicao_original: Vector2
var orb_1_coletada: bool = false
var orb_2_coletada: bool = false
func _process(delta):
	label_timer.text = str(ceil(timer_labirinto.time_left))

func _ready() -> void:
	timer_labirinto.timeout.connect(_on_timer_labirinto_timeout)
	timer_mensagem.timeout.connect(_on_timer_mensagem_timeout)
	orb_labirinto.orb_coletada.connect(_on_orb_1_coletada)
	orbe_masmorra.orbe_2_coletada.connect(_on_orb_2_coletada)
	label_timer.visible = false

func _on_orb_1_coletada() -> void:
	orb_1_coletada = true
	print("Orb 1 coletada")

func _on_orb_2_coletada() -> void:
	orb_2_coletada = true
	print("Orb 2 coletada")

func _on_botao_1_pressed() -> void:
	Labirinto.visible = true
	posicao_original = personagem.global_position
	personagem.global_position = entrada_labirinto.global_position
	timer_labirinto.start()
	label_timer.visible = true
func _on_timer_labirinto_timeout() -> void:
	if orb_1_coletada:
		return
	personagem.global_position = posicao_original
	label_timer.visible = false
	
func _on_botao_2_pressed() -> void:
	posicao_original = personagem.global_position
	personagem.global_position = entrada_masmorra.global_position

func _on_botao_3_pressed() -> void:
	if orb_1_coletada and orb_2_coletada:
		get_tree().change_scene_to_file("res://Cenas/Fase_Arceus.tscn")
	elif orb_1_coletada or orb_2_coletada:
		mostrar_mensagem("Você reuniu apenas metade do poder necessário para prosseguir...")
	else:
		mostrar_mensagem("Você ainda tem um caminho longo a percorrer!")
		
func mostrar_mensagem(texto:String) -> void:
	label_mensagem.text = texto
	label_mensagem.visible=true
	timer_mensagem.start()
func _on_timer_mensagem_timeout() -> void:
	label_mensagem.visible=false
	
