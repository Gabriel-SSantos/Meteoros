extends RigidBody2D

var rang = RandomNumberGenerator.new()
var Escudo = load("res://cenas/campo_deforca.tscn").instantiate()
	
func _on_area_2d_body_entered(body):
	if body.name == "Nave":
		if !Global.escudoAtivo:
			body.add_child(Escudo)
			Global.escudoAtivo = true
		queue_free()
	pass # Replace with function body.

func _process(delta):
	linear_velocity.y = 80
	gravity_scale = 0.1
		
	if !Global.ativo:
		linear_velocity.y = 0
		gravity_scale = 0
	
		
		
