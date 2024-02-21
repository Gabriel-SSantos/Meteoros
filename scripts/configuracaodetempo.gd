extends Control

func _on_Button_pressed():
	Global.minutoLimite = -1
	Global.segundoLimite = -1
	get_tree().change_scene_to_file("res://cenas/Mundo.tscn")
	pass # Replace with function body.

func _on_Button2_pressed():
	Global.minutoLimite = 1;
	Global.segundoLimite = 30; 
	get_tree().change_scene_to_file("res://cenas/Mundo.tscn")
	pass # Replace with function body.

func _on_TouchScreenButton_pressed():
	_on_Button_pressed()
	pass # Replace with function body.


func _on_tempo_pressed():
	_on_Button2_pressed()
	pass 
