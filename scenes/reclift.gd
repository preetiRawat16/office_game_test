extends Control  # Change if needed

signal task_ended  # Declare the signal

@onready var secondfloor_rec = $TextureRect/recbtn2
@onready var firstfloor_rec = $TextureRect/recbtn1
 # Ensure this matches your button's path

func _ready():
	secondfloor_rec.pressed.connect(_on_button2_pressed)
	firstfloor_rec.pressed.connect(_on_button_pressed)
	#button.pressed.connect(_on_button_pressed)

func set_task_data(data: String):
	print("Task data set:", data)  # Example function to receive task details

func _on_task_completed():
	push_warning("Task completed, emitting task_ended signal")
	emit_signal("task_ended")  # Emit the signal when the task is done
	queue_free()  # Remove the task box from the scene

func _on_button2_pressed():
	_on_task_completed() 

func _on_button_pressed():
	_on_task_completed()  # Call the task completion when Button2 is pressed


func _on_receptionbtn_2_pressed() -> void:
	pass # Replace with function body.
