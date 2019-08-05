extends CanvasModulate

export (PackedScene) var romualdo

# Called when the node enters the scene tree for the first time.
func _ready():
	load_level()

func load_level():
	gamahandler.target_m = $target

