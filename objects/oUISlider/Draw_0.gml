
var darker = 0
with cell {
	if zui_get_hover() && !pressed
		darker = 2
}

draw_sprite_part_ext(sSlider, darker, 40, 0, 8, 8, __width - 12, 4, 1, 1, $ffffff, 1);
draw_sprite_part_ext(sSlider, 1, 8, 0, 32, 8, 8, 4, (cell.__x - 12) / 32, 1, $ffffff, 1);
draw_sprite_part_ext(sSlider, darker, 8, 0, 32, 8, cell.__x, 4, (__width - cell.__x - 12) / 32, 1, $ffffff, 1);
draw_sprite_part_ext(sSlider, 1, 0, 0, 8, 8, 4, 4, 1, 1, $ffffff, 1);

