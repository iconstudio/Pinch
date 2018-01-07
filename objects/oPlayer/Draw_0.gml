/// @description Drawing

if shield_count != shield_count_max {
	var alpha = (shield_count / shield_count_max) * image_alpha + 0.3
	
	draw_sprite_ext(sPlayerBarrier, 0, x, y + 9, image_xscale, image_yscale, 0, $ffffff, alpha)
}

event_inherited();
