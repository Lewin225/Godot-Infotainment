extends ScrollContainer


var open = true

var target_size = 750
var _size = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_just_released("menu"):
		open = not open
	
	if open:
		_size += (_size * 0.1) + 1
		if _size > target_size:
			_size = target_size
	else:
		_size -= (_size * 0.1) + 1
		if _size < 0:
			_size = 0
				
	self.rect_min_size.x = lerp(self.rect_min_size.x, _size,0.5)
