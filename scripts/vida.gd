extends Control

@onready var vidas = [get_node("vidas0"),get_node("vidas1"),get_node("vidas2"),get_node("vidas3")]
var i
func _process(delta):
	ControlarVida()
	pass
func ControlarVida():
	i = 0
	if Global.vida < 4:
		vidas[0].visible = false
		if Global.vida < 3:
			vidas[1].visible = false
			if Global.vida < 2: 
				vidas[2].visible = false
				if Global.vida < 1:
					vidas[3].visible = false
	else:
		while i < 4:
			vidas[i].visible = true
			i += 1
