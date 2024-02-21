extends RigidBody2D

var rang = RandomNumberGenerator.new()

func _on_area_2d_body_entered(body):
	if body.name == "Nave":
		print("nave")
		Global.escudoAtivo = true
		queue_free()
	pass # Replace with function body.

func _process(delta):
	linear_velocity.y = 80
	gravity_scale = 0.1
		
	if !Global.ativo:
		linear_velocity.y = 0
		gravity_scale = 0
	
		
		
