/// @description Update

if status >= status_stun {
	event_inherited()
	exit	
} else {
	xVelLimit = 3
}

var mx = 0, my = 0

my = (io_check_down() - io_check_up()) * ladder_speed

var ladderc = instance_place(x, y, oLadder)
var ladderu = instance_place(x, y + my + sign(my), oLadder)
var ladder = max(ladderc, ladderu)

if ladder != noone {
	if my != 0 {
		if !laddering and (!onAir or (onAir and my < 0)) { // get on ladder
			laddering = true
			x = ladder.x + ladder.lxoffset
			y = (ladder.y + y) / 2
			xVel = 0
			yVel = 0
			jumped = false
			shielding = false
		} else if laddering { // move
			if ladderu and ladderc { // normal
				y += my
			} else { // make player doesnt collide with walls
				// there is no ladder on moveway, or no ladder on current position
				
				if my < 0 { // move up
					var check = false
					if ladderu != noone {
						with ladderu {
							if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top - ladder_speed, object_index, false, true)
								check = true
						}
					}
					
					if place_free(x, y - ladder_speed - 1) { // get on the top of a block
						y += my
					} else if check and place_free(x, y - 1) {
						y += my
					}
					move_outside_solid(270, ladder_speed + 1)
				} else { // move down
					if place_free(x, y + ladder_speed + 1) {
						y += my
					} else { // grounded
						move_contact_solid(270, ladder_speed + 1)
						onAir = false
						laddering = false
					}
					move_outside_solid(90, ladder_speed + 1)
				}
			}
		}
	}

} else if laddering {
	move_contact_solid(270, ladder_speed + 1)
	laddering = false
}

if !laddering {
	yGravity = yGravity_default
	
	mx = io_check_right() - io_check_left()

	if mx != 0 and !shielding {
		xVel += mx * 2
	}

	if !onAir {
		jump_count = jump_count_max
		jumped = false
	}

	if jumped and jump_count < jump_count_max {
		jump_count++
		yVel = -10
		
		//yGravity /= 2
	} else {
		jump_count = jump_count_max
		jumped = false
	}

	if !onAir and io_check_pressed_jump() and !shielding { // do Jump
		yVel = -10 // flash jump
	
		jump_count = 0
		jumped = true
	} else { // while not jumping
		if onAir {
			var cond1 = false //io_check_pressed_down() and io_check_
			var cond2 = io_check_down() and io_check_pressed_jump()
			if cond1 or cond2 { // do Stomping
				//if stomp_count > 0 { // double pressed
				//	stomp_count = 0
					yVel = max(yVel, yVelMax)
				//} else {
				//	stomp_count = stomp_count_max
				//}
			}
		} else {
			if mx == 0 and io_check_pressed_down() and !shielding { // do Getting Shield
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
					shielding = false
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
	xVel = 0
	yVel = 0
}

if stomp_count > 0
	stomp_count--

event_inherited()
