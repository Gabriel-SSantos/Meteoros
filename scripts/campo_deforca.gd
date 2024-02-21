extends StaticBody2D

var durabilidade = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if durabilidade <= 0:
		Global.escudoAtivo = false
		queue_free()
	pass
