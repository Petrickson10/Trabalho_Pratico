extends Node2D
@onready var DesSala1: Marker2D =$DesSala1
@onready var DesSala2: Marker2D =$DesSala2
@onready var DesSala3: Marker2D =$DesSala3
@onready var DesSala4: Marker2D =$DesSala4
@onready var DesSala5: Marker2D =$DesSala5
@onready var DesSala6: Marker2D =$DesSala6
@onready var personagem:CharacterBody2D = $"../Giratina"
@onready var Natural2: Marker2D = $"../Ponto3"


func _on_sala_1_porta_1_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala2.global_position

func _on_sala_1_porta_2_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala3.global_position

func _on_sala_1_porta_3_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala4.global_position

func _on_sala_2_porta_1_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala4.global_position
	
func _on_sala_2_porta_2_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala1.global_position



func _on_sala_2_porta_3_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala5.global_position


func _on_sala_2_porta_4_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala3.global_position


func _on_sala_3_porta_1_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala5.global_position


func _on_sala_3_porta_2_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala4.global_position


func _on_sala_3_porta_3_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala1.global_position


func _on_sala_4_porta_1_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala5.global_position


func _on_sala_4_porta_2_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala2.global_position


func _on_sala_5_porta_1_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala1.global_position


func _on_sala_5_porta_2_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala3.global_position


func _on_sala_5_porta_3_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala2.global_position



func _on_sala_5_porta_4_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala4.global_position


func _on_sala_5_porta_5_body_entered(body: Node2D) -> void:
	personagem.global_position = DesSala6.global_position


func _on_sala_6_porta_1_body_entered(body: Node2D) -> void:
	personagem.global_position = Natural2.global_position
	$CanvasLayer.visible=false
	
