extends KinematicBody2D

export (float) var fuerza_disparo
var puede_disparar = true


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func disparar():
	if(puede_disparar):
		var newm = get_tree().get_nodes_in_group("main")[0].romualdo.instance()
		get_tree().get_nodes_in_group("nivel")[0].add_child(newm)
		newm.global_position =  $spawn.global_position
		newm.get_node("Chest").apply_impulse(newm.get_node("Chest").position, Vector2(cos(rotation) * fuerza_disparo,sin(rotation) * fuerza_disparo))
		puede_disparar = false
		yield(get_tree().create_timer(1.0),"timeout")
		puede_disparar = true