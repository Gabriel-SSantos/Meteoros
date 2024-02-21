extends Control

func _ready():
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene_to_file("res://cenas/TelaDeInicio.tscn")
	pass # Replace with function body.
func _process(delta):
	if Input.is_action_just_pressed("reiniciarB"):
		_on_Button_pressed()
	pass
