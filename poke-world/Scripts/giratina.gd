extends CharacterBody2D

@export var velocidade: float = 250.0

@onready var animacao: AnimatedSprite2D = $"AnimacaoG"
@onready var colisao: CollisionShape2D = $"ColisaoG"

var ultima_direcao: String = "baixo"


func _physics_process(_delta: float) -> void:
	var direcao := Vector2.ZERO

	if Input.is_action_pressed("ui_left"):
		direcao.x -= 1

	if Input.is_action_pressed("ui_right"):
		direcao.x += 1

	if Input.is_action_pressed("ui_up"):
		direcao.y -= 1

	if Input.is_action_pressed("ui_down"):
		direcao.y += 1

	direcao = direcao.normalized()
	velocity = direcao * velocidade

	if direcao != Vector2.ZERO:
		if abs(direcao.x) > abs(direcao.y):
			if direcao.x < 0:
				ultima_direcao = "Esquerda"
			else:
				ultima_direcao = "Direita"
		else:
			if direcao.y < 0:
				ultima_direcao = "Cima"
			else:
				ultima_direcao = "Baixo"

		animacao.play("Andar " + ultima_direcao)

	else:
		animacao.pause()
		animacao.frame=0

	move_and_slide()
