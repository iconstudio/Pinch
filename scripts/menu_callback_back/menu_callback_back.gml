/// @description menu_callback_back()
/// @function menu_callback_back

with oMainMenu {
	if menu_focus != menu_prefocus
		menu_change_focus(menu_prefocus)
	else if menu_focus != menu_preprefocus
		menu_change_focus(menu_preprefocus)
	else
		menu_change_focus(menu_first)
}
