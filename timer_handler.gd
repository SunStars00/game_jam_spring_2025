extends Node

var time: float
var deadTime: float
var a
var b
var rng = RandomNumberGenerator.new()
var cofMachBroke: bool
var maxPeople: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	time = 0
	deadTime = 60
	maxPeople = (get_tree().get_nodes_in_group("distractionPeople").size() - 1)
	get_tree().call_group("distractionPeople", "changeVisByAsk", maxPeople + 1)
	a = 60 # first wait time
	b = 260 # decrease rate
	cofMachBroke = false
	%PeopleDistractionTimer.wait_time = a
	%PeopleDistractionTimer.start()

func _process(delta: float) -> void:
	time + delta
	if time > deadTime:
		pass #game end

func difficulty(x) -> float:
	if cofMachBroke:
		return a*exp(-x/(b/2))
	else:
		return a*exp(-x/b)

func startPeopleTimer() -> void:
	%PeopleDistractionTimer.wait_time = difficulty(time) + rng.randf_range(0,difficulty(time)/10)
	%PeopleDistractionTimer.start()

func _on_people_distraction_timer_timeout() -> void:
	get_tree().call_group("distractionPeople", "changeVisByAsk", rng.randi_range(0,maxPeople))

func _on_next_break_timer_timeout() -> void:
	pass # Replace with function body.
