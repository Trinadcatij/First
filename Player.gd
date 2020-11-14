extends KinematicBody2D

var speed = 50
var jump_forse = 300
var gravity=600

var vel = Vector2()

onready var player_sprite = get_node("Player")


func _physics_process(delta):
	if Input.is_action_pressed("player_left"):
		vel.x-=speed
	elif Input .is_action_pressed("player_right"):
			vel.x+=speed
	vel.y+=gravity*delta
	if Input.is_action_pressed("player_jump") and is_on_floor():
		vel.y-=jump_forse 
	vel = move_and_slide(vel,Vector2.UP)
	if vel.x < 0 :
		player_sprite.flip_h=true
	if vel.x > 0 :
		player_sprite.flip_h=false
