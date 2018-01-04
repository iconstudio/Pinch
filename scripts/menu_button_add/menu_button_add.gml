/// @description menu_button_add(caption, callback)
/// @function menu_button_add
/// @param caption {real}
/// @param callback {script}

var zw = zui_get_width()
var button_id = zui_create(0, menu_lasty, oMainMenuButton)
with (button_id) {
	zui_set_size(zw, 45)
	caption = argument0
	callback = argument1
}

menu_lasty += 50

return button_id
