extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%PeopleDistractionTimer.wait_time = 1
	%PeopleDistractionTimer.start()


func _on_people_distraction_timer_timeout() -> void:
	%PeopleDistractionTimer.wait_time = 0.5
	%PeopleDistractionTimer.start()
	print("peopleTimer")
