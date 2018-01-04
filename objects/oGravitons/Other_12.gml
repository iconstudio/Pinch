/// @description Horizontal contact

if xVel > 0
	move_contact_solid(0, abs(xVel) + 1)
else if xVel < 0
	move_contact_solid(180, abs(xVel) + 1)
