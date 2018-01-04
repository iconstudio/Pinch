/// @description menu_change_focus(index)
/// @function menu_change_focus
/// @param index {instance}

with oMainMenu {
	if menu_focus == argument0
		return;
	
	with argument0 {
		zui_set_visible(true)
		dmode = 0 // fade in
	}
	
	with menu_focus
		dmode = 1 // fade out

	menu_preprefocus = menu_prefocus
	menu_prefocus = menu_focus
	menu_focus = argument0
}
