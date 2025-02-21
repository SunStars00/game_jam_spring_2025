extends Sprite2D

func _ready() -> void:
	pass

# Called when the node enters the scene tree for the first time.
func _setInvis() -> void:
	visible = false

func _setVis() -> void:
	visible = true

func breakByAsk(name: String):
	if self.name == name:
		_setVis()
	else:
		_setInvis()
