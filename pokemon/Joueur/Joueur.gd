extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$joueur.playing = true


func _physics_process(delta):
	if Input.is_action_pressed("avancer") :
		position.y -=3
		$joueur.animation = 'avance'
	elif Input.is_action_pressed("reculer") :
		position.y +=3
		$joueur.animation = 'recule'
	elif Input.is_action_pressed("vers_la_droite") :
		position.x +=3
		$joueur.animation = 'droite'
	elif Input.is_action_pressed("vers_la_gauche") :
		position.x -=3
		$joueur.animation = 'gauche'
