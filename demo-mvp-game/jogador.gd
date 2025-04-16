extends CharacterBody2D
var input: Vector2 = Vector2.ZERO

var velocidade:float = 500

func get_input():
	input.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	input.y =  int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	input = input.normalized()

func character_moviment():
	velocity = input * velocidade

func _rendy():
	pass
func _prysicis_process(delta):
	get_input()
	character_moviment()
	move_and_slide()	
