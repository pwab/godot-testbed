extends Control

onready var gui = get_node("gui")
onready var menu = get_node("gui/main/env/side/menu")
onready var scan_button = menu.get_node("scan_button")
onready var most_used_list = menu.get_node("most_used_list")
onready var editor = get_node("gui/main/env/editor")

export(int) onready var MIN_COUNT = 1

class WordCountSorter:
	static func sort(a, b):
		if a[1] > b[1]:
			return true
		return false

func _ready():
	scan_button.connect("pressed", self, "_on_scan_button_pressed")
	set_process(true)

func _process(delta):
	# Signal?
	gui.rect_size = OS.window_size

func _on_scan_button_pressed():
	print("> Scanning")
	
	var text = editor.text
	var words = get_words(text)
	
	update_most_used_list(words)
	
func update_most_used_list(words):
	most_used_list.clear()
	var sighted_words = []
	var most_used = []
	
	# We should use lowered words here
	words = get_lowered_words(words)
	
	# Analyse the words list
	for word in words:
		if not word in sighted_words and words.count(word) > MIN_COUNT and not word in most_used:
			most_used.append([word, words.count(word)])
			sighted_words.append(word)
	
	# Sort by amount
	most_used.sort_custom(WordCountSorter, "sort")
	
	# Fill the itemlist
	for word in most_used:
		most_used_list.add_item(word[0])
		most_used_list.add_item(str(word[1]))

func get_lowered_words(words):
	var lowered_words = []
	for word in words:
		lowered_words.append(word.to_lower())
	return lowered_words

func get_words(text):
	# Get the words
	var regex_words = RegEx.new()
	regex_words.compile("[äöüÄÖÜß\\w]+")
	var results = regex_words.search_all(text)
	
	var words = []
	for result in results:
		words.append(str(result.get_string()))
		
	return words