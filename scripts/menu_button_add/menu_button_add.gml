/// @description menu_button_add(caption, callback, [last])
/// @function menu_button_add
/// @param caption {string}
/// @param callback {script}
/// @param [last] {boolean}

var cy = menu_lasty, ay = 50
if argument_count > 2 and argument[2] {
	cy = zui_get_height() - 100
	ay = 0
}

var nsz = ds_list_size(button_list)
var zw = zui_get_width()
var button_id = zui_create(zw * 0.5, cy, oMainMenuButton)
with (button_id) {
	zui_set_size(zw, 45)
	caption = argument[0]
	callback = argument[1]
	
	if nsz > 0 {
		next = other.button_list[| 0]
		before = other.button_list[| nsz - 1]
		
		before.next = id
	} else {
		next = id
		before = id
	}
}

menu_lasty += ay
ds_list_add(button_list, button_id)

return button_id
