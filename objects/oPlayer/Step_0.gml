/// @description Update

if status >= status_stun {
	event_inherited()
	exit	
}

var mx = io_check_right() - io_check_left()

if mx != 0 and !shielding {
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

if !onAir and io_check_pressed_jump() { // do Jump
	yVel = -12 // flash jump
	
	jump_count = 0
	jumped = true
} else { // while not jumping
	if onAir {
		if yVel > 0 and io_check_pressed_down() { // do Stomping
			if stomp_count > 0 { // double pressed
				stomp_count = 0
				yVel = max(yVel, yVelMax)
			} else {
				stomp_count = stomp_count_max
			}
		}
	} else {
		if mx == 0 and io_check_pressed_down() { // do Getting Shield
			shielding = true
			shield_count = shield_count_max
		}
		
		if io_check_down() and shielding {
			if shield_count > 0 {
				shield_count--
				invincible = 9999
			} else {
				shield_count = 0
				invincible = 0
			}
		} else {
			shielding = false
		}
		
		if !shielding {
			shield_count = shield_count_max
			invincible = 0
		}
	}
}

if jumped and io_check_released_jump() {
	jump_count = jump_count_max
	jumped = false
	yVel /= 2
}

if stomp_count > 0
	stomp_count--

event_inherited()
