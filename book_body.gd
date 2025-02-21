extends Sprite2D

var currentPage
var maxPage

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	currentPage = 0
	maxPage = (get_tree().get_nodes_in_group("bookPages").size() - 1)
	_goToPage(currentPage)

func _next() -> void:
	currentPage = currentPage + 1
	if currentPage > maxPage: 
		currentPage = maxPage
	_goToPage(currentPage)

func _prev() -> void:
	currentPage = currentPage - 1
	if currentPage < 0: 
		currentPage = 0
	_goToPage(currentPage)

func _goToPage(page) -> void:
	get_tree().call_group("bookPages","changeVisByAsk", page)
