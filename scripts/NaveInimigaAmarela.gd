extends CharacterBody2D


var posicao = Vector2()
var velocidade = Global.velocidadeInimigo[0]

func _process(delta):
	if Global.ativo:
		position.y += velocidade

func _on_Dificuldade_timeout():
	velocidade += 1
	pass
