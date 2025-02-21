extends Sprite2D

var personNumber

func _ready() -> void:
	personNumber = self.name.right(self.name.length()-6).to_int()

# Called when the node enters the scene tree for the first time.
func _setInvis() -> void:
	visible = false

func _setVis() -> void:
	visible = true

func changeVisByAsk(person):
	if person == personNumber:
		_setVis()
	else:
		_setInvis()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			_setInvis()
			%timerHandler.startPeopleTimer()
