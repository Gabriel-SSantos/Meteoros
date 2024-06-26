extends Node2D


@onready var spawns = [$Position1.global_position,$Position2.global_position,$Position3.global_position,$Position4.global_position,$Position5.global_position]
var Escudo = load("res://cenas/campo_deforca.tscn").instantiate()
var pontosLimitesMeteoro = 50
var pontosLimitesVida = 30
var vidaitens = 0
func _process(delta):
	if Input.is_action_just_pressed("continuarB"):
		Global.ativo = true
	if Input.is_action_just_pressed("pausarB"):
		Global.ativo = false
	#if Global.escudoAtivo:
		#get_node("Nave").add_child(Escudo)
	if(Global.vida == 0):
		definirDerrota()
		var Telafinal = load("res://cenas/telafinal.tscn").instantiate()
		get_tree().current_scene.add_child(Telafinal)
		
func definirDerrota():
	Global.ativo = false
	Global.final = "Derrota"

var escudosItens = 0

func liberarEscudo():
	var EscudoItem = load("res://cenas/escudo_item.tscn").instantiate()
	EscudoItem.global_position.x = randi_range(10,spawns[4].x)
	get_node("Itens").add_child(EscudoItem)
	pass
	
func liberarVida():
	var VidaItem = load("res://cenas/vida_item.tscn").instantiate()
	VidaItem.global_position.x = randi_range(10,spawns[4].x)
	get_node("Itens").add_child(VidaItem)

func _on_Area2D_body_entered(body):
	if (body.name == 'Meteoro'):
		Global.score += 1
		body.global_position = Vector2(spawns[randi()%spawns.size()])
		escudosItens += 1
		vidaitens += 1
		if escudosItens == pontosLimitesMeteoro:
			escudosItens = 0 
			pontosLimitesMeteoro += 30  
			liberarEscudo()
		if Global.vida < 4 && vidaitens == pontosLimitesVida:
			vidaitens = 0
			liberarVida()
	pass
