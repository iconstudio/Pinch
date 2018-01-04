/// @description Physics Properties, Coordinate

if !onAir
	xVel -= xVel * xFric
yVel -= yVel * yFric

// Limit the horizontal velocity
var xvector = abs(xVel) // pixel per second
if xvector > xVelLimit
	xVel = xVelLimit * sign(xVel)

// Limit the vertical velocity
if yVel > yVelMax
	yVel = yVelMax
if yVel < yVelMin
	yVel = yVelMin

if yVel <= 0 {
	if place_free(x, y + yVel + 1)
		onAir = true
	else
		onAir = false
} else {
	onAir = true
}

event_inherited()
