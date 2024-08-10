extends Sprite2D

var selected_tool = null

# Called when the node enters the scene tree for the first time.
func _ready():
	rotation = randfn(0, 1) * PI/4
	position = position + Vector2(int(randfn(0,1)*10), int(randfn(0,1)*10))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_rigid_body_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouse:
		if selected_tool == null:
			rotation -= rotation * (randi()%10) / 5.0
			if rotation < PI/100:
				rotation = 0.0
