extends CharacterBody2D
@export var vida_maxima: int = 3
var vida_atual: int
@onready var label_vida: Label = $"../Vida_G"
const SPEED = 300.0
var cena_tiro
@onready var animacao: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	vida_atual = vida_maxima
	atualizar_label_vida()
	cena_tiro= preload("res://Cenas/tiro.tscn")
	
func atualizar_label_vida() -> void:
	label_vida.text = "Vida Giratina: " + str(vida_atual)


func receber_dano(quantidade: int = 1) -> void:
	vida_atual -= quantidade
	vida_atual = max(vida_atual, 0)

	atualizar_label_vida()


	if vida_atual <= 0:
		queue_free()


func _physics_process(delta: float) -> void:
	velocity.x = 0
	velocity.y = 0
	animacao.play("default")
	if Input.is_action_just_pressed("ui_accept"):
		var tiro = cena_tiro.instantiate()
		tiro.position.y = position.y + 320
		tiro.position.x = position.x+135
		get_parent().add_child(tiro)
		animacao.play("Atacar")
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1*SPEED
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1*SPEED
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1*SPEED
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1*SPEED
		
	move_and_slide()
	
	
