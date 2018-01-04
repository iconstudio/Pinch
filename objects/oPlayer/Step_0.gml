/// @description Update

if status >= status_stun {
	event_inherited()
	exit	
}

var mx = io_check_right() - io_check_left()

if mx != 0 {
	xVel = mx * 5
}

if !onAir {
	jump_count = jump_count_max
	jumped = false
}

if jumped and jump_count < jump_count_max {
	jump_count++
	yVel = -8
} else {
	jump_count = jump_count_max
	jumped = false
}

if !onAir and io_check_pressed_jump() {
	yVel = -12 // flash jump
	
	jump_count = 0
	jumped = true
}

if jumped and io_check_released_jump() {
	jump_count = jump_count_max
	jumped = false
	yVel /= 2
}

event_inherited()
