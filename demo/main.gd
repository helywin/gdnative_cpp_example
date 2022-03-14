extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_speed_value_changed(value):
	get_node("Sprite").speed = value
	pass # Replace with function body.


func _on_Sprite_position_changed(node, new_pos):
#	var speed = get_node("Sprite").speed
#	print("speed" + str(speed))
	get_node("ui/pos").text = "位置: " + str(new_pos["pos"])
