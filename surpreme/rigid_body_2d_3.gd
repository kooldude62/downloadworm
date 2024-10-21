extends RigidBody2D
var dir = 1
var up = 0.2
@onready var timer: Timer = $"../Node/Timer"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		dir = -1
	if Input.is_action_pressed("ui_right"):
		dir = 1
	if Input.is_action_pressed("ui_up"):
		up = 1
		timer.start()
		
	if Input.is_action_just_pressed("ui_accept"):
		apply_central_force(Vector2(10000*dir,-50000*up))


func _on_timer_timeout() -> void:
	up = 0.20
