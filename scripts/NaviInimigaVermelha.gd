extends CharacterBody2D

var velocidade = Global.velocidadeInimigo[2]

func _process(delta):
	if Global.ativo:
		position.y += velocidade


func _on_Dificuldade_timeout():
	velocidade += 1
	pass 
