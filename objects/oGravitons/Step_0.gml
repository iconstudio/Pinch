/// @description Physics

if xVel != 0 {
	var cx = x + xVel + sign(xVel)
	
	if place_free(cx, y) {
		x += xVel
		
		var gradea = abs(floor(slope_max * xVel))
		if place_free(x, y + gradea) {
			y += gradea
		} else {
			move_contact_solid(270, gradea)
		}
	} else {
		event_user(1)
	}
}

var cy
if yVel < 0
	cy = y + yVel - 1
else
	cy = y + yVel + 1
	
if place_free(x, cy) and !collision_line(x, y, x, cy, oSolid, false, true) {
	y += yVel
	yVel += yGravity
	onAir = true
} else {
	event_user(3)
}
