/// @description Drawing Game HUD

draw_set_alpha(1)
draw_set_color($ffffff)

for (var i = 0; i < 4; ++i) {
	var __idx = invdx + i * invdgw
	draw_sprite(sInventory, 0, __idx, idy)
	draw_rectangle(__idx, idy, __idx + invdw, invddy, true)
}

var hv = 0, mv = 0
// drawing hp gauge
if instance_exists(player_id()) {
	with player_id() {
		hv = hp
		mv = maxhp
	}

	if hv > 0 {
		var top = 80 - (hv / mv) * 80
		draw_sprite_part_ext(sCircularGauge, 1, 0, top, 80, 80, gdx - 40, gdy - 40 + top, 1, 1, $ffffff, 1)
	}
}
draw_sprite_ext(sCircularGauge, 0, gdx, gdy, 1, 1, 0, $ffffff, 1)

if hv != 0 and mv != 0 {
	draw_set_font(fontRegular)
	draw_set_halign(1)
	draw_set_valign(1)
	draw_text(gdx, gdy + 60, string(hv) + " / " + string(mv))
}
