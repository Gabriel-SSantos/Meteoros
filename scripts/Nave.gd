extends CharacterBody2D
var posicao = Vector2()
var velocidade = 470
@onready var geralvida = get_parent().get_node("vida")
func _process(delta):
	posicao = Vector2.ZERO
	$AnimationPlayer.play("RESET")
	if(Global.ativo):
		if Input.is_action_pressed("mover_esquerda"):
			posicao.x -= velocidade
			$AnimationPlayer.play("virar")
		if Input.is_action_pressed("mover_direita"):
			posicao.x += velocidade
			$AnimationPlayer.play("virardir")
	set_velocity(posicao)
	move_and_slide()
	posicao = velocity
	
