extends Node2D

var score = 0
var vida = 4 
var ativo = false
var velocidadeInimigo = [0.4,0.1,0.5]
var final = ""
var minutoLimite = 0
var segundoLimite = 0
var escudoAtivo = false
var qtdEscudos = 0 
var virandoDir = false
var virandoEsq = false
func resetar():	
	score = 0
	vida = 4 
	ativo = false
	velocidadeInimigo = [0.4,0.1,0.5]
	final = ""
	
func continuar():
	ativo = true
	
func pausar():
	ativo = false
	
func _ready():
	pass # Replace with function body.
