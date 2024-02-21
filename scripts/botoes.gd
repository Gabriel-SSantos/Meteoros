extends Control

func _ready():
	Global.ativo = true
	$crotoles/start.grab_focus()
	pass 


func _on_start_pressed():
	Global.ativo = true
	get_tree().change_scene_to_file("res://cenas/configuracaodetempo.tscn") 
	pass # Replace with function body.

func _on_pausar_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_info_pressed():
	var infor = load("res://cenas/ControleTela.tscn").instantiate()
	get_tree().current_scene.add_child(infor)
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("iniciarB"):
		_on_start_pressed()
	if Input.is_action_just_pressed("infoB"):
		_on_info_pressed()
	if Input.is_action_just_pressed("pausarB"):
		_on_pausar_pressed()
	pass
