/// @description Update

if status >= status_stun {
	event_inherited()
	exit	
}

var mx = 0, my = 0

my = (io_check_down() - io_check_up()) * 3
var ladder = max(instance_place(x, y, oLadder), instance_place(x, y + my + sign(my), oLadder))

if ladder != noone {
	if my != 0 {
		if !laddering { // get on ladder
			laddering = true
			x = ladder.x + ladder.lxoffset
			y = (ladder.y + y) / 2
		} else { // move
			y += my
		}
	}

	if laddering {
		xVel = 0
		yVel = 0
	}
} else {
	// grounded
	if my < 0
		move_outside_solid(90, 4)
	else
		move_outside_solid(270, 4)
	move_contact_solid(270, 4)
	laddering = false
}

if !laddering {
	yGravity = yGravity_default
	
	mx = io_check_right() - io_check_left()

	if mx != 0 and !shielding {
		xVel = mx * 5
	}

	if !onAir {
		jump_count = jump_count_max
		jumped = false
	}

	if jumped and jump_count < jump_count_max {
		jump_count++
		//yVel = -10
		
		yGravity /= 2
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
} else {
	yGravity = 0
}

if stomp_count > 0
	stomp_count--

event_inherited()
