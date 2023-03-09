extends ParallaxBackground


func _physics_process(delta):
	scroll_base_offset -= Vector2(75, 0) * delta
