extends Node2D

var segundos = 0
var minutos = 0 

@onready var texto = get_node("Label")

func resetar():
	minutos = 0
	segundos = 0
func time():
	if(segundos == 60):
		minutos += 1
		segundos = 0
func _on_Timer_timeout():
	if Global.ativo:
		segundos += 1
		time()
		if(minutos == Global.minutoLimite && segundos == Global.segundoLimite):
			Global.ativo = false
			get_tree().change_scene_to_file("res://cenas/telafinal.tscn")
	texto.text = str("0",minutos,":",segundos)
	pass # Replace with function body.
