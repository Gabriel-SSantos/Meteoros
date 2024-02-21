extends CanvasLayer


func _ready():
	pass # Replace with function body.

func _on_Play_pressed():
	Global.continuar()
	pass # Replace with function body.


func _on_Pausar_pressed():
	Global.pausar()
	pass # Replace with function body.


func _on_Reiniciar_pressed():
	get_tree().change_scene_to_file("res://cenas/Mundo.tscn")
	Global.resetar()
	Temporizador.resetar()
	pass # Replace with function body.
