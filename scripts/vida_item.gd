extends CharacterBody2D


var velocidade = 0.1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Sprite2D.rotation += 0.001
	if Global.ativo:
		position.y += velocidade
	pass

func _on_area_2d_body_entered(body):
	if body.name == "Nave":
		Global.vida += 1
		queue_free()
	pass # Replace with function body.
