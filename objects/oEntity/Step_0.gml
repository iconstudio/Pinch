/// @description Update

if invincible > 0
	invincible--

if hp_regen != 0 {
	if maxhp > hp
		hp += hp_regen
	else
		hp = maxhp
}

if hp <= 0
	status = status_dead

if status >= status_stun {
	xVelLimit = 16
}

event_inherited()
