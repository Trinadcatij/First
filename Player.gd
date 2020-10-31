extends KinematicBody2D

var speed = 45
var jump_forse = 50
var gravity=600

var vel = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("player_left"):
		vel.x-=speed
	elif Input .is_action_pressed("player_right"):
			vel.x+=speed
	vel.y+=gravity*delta
	if Input.is_action_pressed("player_jump"):
		vel.y-=jump_forse
	move_and_slide(vel,Vector2.UP)
