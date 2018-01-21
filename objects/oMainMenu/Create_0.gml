/// @description Main menu initialization

dmode = 0
ipush = 0

global.main_wsize = global.gui_wsize
global.main_hsize = global.gui_hsize
global.main_node_x = global.gui_wsize * 0.55
global.main_node_y = global.gui_hsize * 0.1
global.main_node_wsize = global.gui_wsize * 0.4
global.main_node_hsize = global.gui_hsize * 0.8

zui_set_anchor(0.5, 0.5)
zui_set_size(global.gui_wsize, global.gui_hsize)

menu_title = ""
menu_first = menu_node_add()
menu_focus = menu_first
menu_prefocus = noone
menu_preprefocus = noone

with (menu_first) {
	zui_set_visible(true)
	
	button_focus = menu_button_add("Start game", menu_callback_start)
	menu_button_add("Achievements", menu_callback_achievement)
	menu_button_add("Log", menu_callback_log)
	menu_button_add("Option", menu_callback_option)
	menu_button_add("Exit game", menu_callback_exit)
}

menu_start = menu_node_add()
with (menu_start) {
	button_focus = menu_button_add("Stage Begin", menu_callback_gamebegin)
	menu_button_add("Back", menu_callback_back, true)
}

menu_achievement = menu_node_add()
with (menu_achievement) {
	button_focus = menu_button_add("Back", menu_callback_back, true)
}

menu_log = menu_node_add()
with (menu_log) {
	button_focus = menu_button_add("Back", menu_callback_back, true)
}

menu_option = menu_node_add()
with (menu_option) {
	menu_button_add("Sound Volume", -1)
	menu_button_add("Music Volume", -1)
	menu_button_add("Effect", -1)
	menu_button_add("Fullscreen", -1)
	button_focus = menu_button_add("Back", menu_callback_back, true)
}
	
menu_exit = menu_node_add()
with (menu_exit) {
	menu_button_add("Yes", menu_callback_end)
	button_focus = menu_button_add("No", menu_callback_back)
}

menu_label = zui_create(zui_get_width() * 0.1, zui_get_height() * 0.5, oUILabel)
with (menu_label) {
	color = $ffffff
	font = fontLarge
	halign = 0
}
