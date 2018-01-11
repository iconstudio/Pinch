/// @description 

draw_set_alpha(__scalex)
draw_set_color($ffffff)

if menu_focus != menu_first and menu_title != "" {
	draw_set_font(fontLarge)
	draw_set_halign(1)
	draw_set_valign(1)
	
	draw_text(__width * 0.25, 0, menu_title)
}
