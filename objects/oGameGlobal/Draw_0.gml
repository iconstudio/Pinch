/// @description Drawing Game HUD

draw_set_alpha(1)
draw_set_color($ffffff)

for (var i = 0; i < 4; ++i) {
	var __idx = invdx + i * invdgw
	draw_rectangle(__idx, idy, __idx + invdw, invddy, false)
}

draw_sprite_ext(sCircularGauge, 0, gdx, gdy, 1, 1, 0, $ffffff, 1)

if instance_exists(global.my_player) {
	var hv
	with global.my_player
		hv = hp / maxhp

	var top = 40 - hv * 40
	draw_sprite_part_ext(sCircularGauge, 1, 0, 0, 40, 40, gdx - 20, gdy - 20, 1, 1, $ffffff, 1)
}
