extends ParallaxBackground

@onready var background = get_node('ParallaxLayer')
var velocidade = 100

func _physics_process(delta):
	background.motion_offset.y += velocidade*delta


func _on_timer_timeout():
	if Global.ativo:
		velocidade += 5
	pass # Replace with function body.
