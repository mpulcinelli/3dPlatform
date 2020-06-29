extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Damage_area_entered(area):
	if(area.name =="inimigo_vermelho"):
		print("SOFREU DANO")


func _on_DamageCauser_area_entered(area):
	if(area.name =="die"):
		get_node("Personagem/Player").jump()
		area.get_parent().queue_free()

