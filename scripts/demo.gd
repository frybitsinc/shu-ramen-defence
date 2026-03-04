class_name Demo
extends Control

## Reference to the label displaying score. 
@export var label : Label

## Current score value
var score : int = 0

## Initialize the label at launch. 
func _ready() -> void:
	update_label_text()

## Increase score by 1. 
func increase_score() -> void:
	score += 1
	update_label_text()

## Update the text of the label to reflect change in score. 
func update_label_text() -> void:
	label.text = "Score : %s" %score

## Triggered when the 'Click' button is pressed
func _on_button_pressed() -> void:
	increase_score()
