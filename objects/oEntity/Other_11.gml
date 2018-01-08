/// @description Horizontal collision

event_user(2)

if status >= status_stun {
	xVel *= -0.4
} else {
	xVel = 0
}
