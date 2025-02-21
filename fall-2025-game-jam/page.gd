extends Sprite2D

var pageNumber

func _ready() -> void:
	pageNumber = self.name.right(self.name.length()-4).to_int()

# Called when the node enters the scene tree for the first time.
func _setInvis() -> void:
	visible = false

func _setVis() -> void:
	visible = true

func changeVisByAsk(page):
	if page == pageNumber:
		_setVis()
	else:
		_setInvis()
