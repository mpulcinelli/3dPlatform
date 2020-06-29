extends KinematicBody

var gravidade = -30.0
var direction = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direction.y += gravidade * delta
	if(Input.is_action_pressed("ui_right")):
		direction.x = 3
		rotation_degrees.y = 90
		get_node("Anim").play("WALK")
	elif(Input.is_action_pressed("ui_left")):
		direction.x = -3
		rotation_degrees.y = -90
		get_node("Anim").play("WALK")
	else:
		direction.x = 0
		get_node("Anim").play("IDLE")

	if(is_on_floor() and Input.is_action_pressed("ui_select")):
		direction.y = 15
	if(not is_on_floor()):
		get_node("Anim").play("JUMP")
	
	direction = move_and_slide(direction, Vector3(0,1,0))



func jump():
	direction.y = 15

