extends Control


func _ready():
	get_node("Pontuação").text = str("Pontuação: ",Global.score)
	if Global.vida == 0:
		get_node("Vitoria").text = str("Derrota")
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene_to_file("res://cenas/TelaDeInicio.tscn")
	Global.resetar()
	Temporizador.resetar()
	pass 
func _process(delta):
	if Input.is_action_just_pressed("reiniciarB"):
		_on_Button_pressed()
	pass
