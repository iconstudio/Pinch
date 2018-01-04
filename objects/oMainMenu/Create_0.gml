/// @description Main menu initialization

dmode = 0
ipush = 0

zui_set_anchor(0.5, 0.5)
zui_set_size(800, 400)

var zw = zui_get_width()
var zh = zui_get_height()

menu_first = zui_create(400, 100, oMainMenuNode)
menu_focus = menu_first
menu_prefocus = noone
menu_preprefocus = noone

with (menu_first) {
	zui_set_size(400, 300)
	zui_set_visible(true)
	
	menu_button_add("Start game", -1)
	menu_button_add("Achievements", -1)
	menu_button_add("Log", -1)
	menu_button_add("Option", -1)
	menu_button_add("Exit game", menu_callback_exit)
	
	var node = menu_node_add()
	with (node) {
		menu_button_add("Artifact 1 - ", -1)
		menu_button_add("Back", menu_callback_back)
	}
	other.menu_start = node
	
	var node = menu_node_add()
	with (node) {
		menu_button_add("Artifact 1 - ", -1)
		menu_button_add("Back", menu_callback_back)
	}
	other.menu_option = node
	
	node = menu_node_add()
	with (node) {
		menu_button_add("Yes", -1)
		menu_button_add("No", menu_callback_back)
	}
	other.menu_exit = node
}
