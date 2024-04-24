extends Control

@onready var vidas = [get_node("vidas0"),get_node("vidas1"),get_node("vidas2"),get_node("vidas3")]
var i 
var j
func _process(delta):
	ControlarVida()
	pass
func ControlarVida():
	i = 1;
	j = 1;
	while j < 5:
			vidas[Global.vida - j].visible = false
			j += 1
	while i < Global.vida + 1:
		vidas[Global.vida - i].visible = true
		i += 1
	
