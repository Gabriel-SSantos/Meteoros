extends CharacterBody2D

var posicao = Vector2()
var velocidade = Global.velocidadeInimigo[1]

@onready var animation = $AnimationPlayer
@onready var timpoanimacao = get_node("Animation")

func _process(delta):
	animation.animation_set_next("destruido","RESET")
	$Sprite2D.rotation += 0.001	
	if Global.ativo:
		position.y += velocidade
		
func _on_Dificuldade_timeout():
	if Global.ativo:
		velocidade += 0.005
		position.y += 0.005
	pass 


func _on_area_2d_body_entered(body):
	if body.name == "Nave":
		Global.vida -= 1
		reset()
	if body.name == "CampoDeforca":
		body.durabilidade -= 1
		reset()
	pass 


func reset():
	global_position.y = -10
	
func _on_animation_timeout():
	print("oba")
	reset()
	pass 
