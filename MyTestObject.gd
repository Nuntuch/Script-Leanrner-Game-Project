extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var state = 0

# Called when the node enters the scene tree for the first time.
func _ready():
#	position.x = 300
#	position.y = 300 #y + = ลง  - = ขึ้น
	position = Vector2(300, 300)
	
	pass # Replace with function body.

func _process(delta: float) -> void:
	if state == 0:
		$Sprite.position.x += 1
	else: #else if - ใช้ elif แทน
		$Sprite.position.x -= 1
	
	if $Sprite.position.x > 50 and state == 0:
		state = 1
	if $Sprite.position.x < 0 and state == 1:
		state = 0
	
	
	$Sprite.rotation_degrees +=5
	
	
#	position.x +=1
#	if position.x < 50 && state == 0 :
#		position.x +=1
#
#	if position.x > 49 :
#		state = 1 
##
#	if state == 1 :
#		position.x -= 1
#
#	if position.x == 0 :
#		state = 0
		 
		
		
		
	