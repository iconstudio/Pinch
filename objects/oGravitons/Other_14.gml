/// @description Vertical contact

if yVel < 0 {
	move_contact_solid(90, abs(yVel) + 1)
} else if yVel >= 0 {
	move_contact_solid(270, abs(yVel) + 1)
	onAir = false
}
