/// @description menu_button_add(caption, callback, [last])
/// @function menu_button_add
/// @param caption {string}
/// @param callback {script}
/// @param [last] {boolean}

var cy = menu_lasty, ay = 50
if argument_count > 2 and argument[2] {
	cy = zui_get_height() - 50
	ay = 0
}

var nsz = ds_list_size(button_list)
var button_id = zui_create(0, cy, oMainMenuButton)
with (button_id) {
	zui_set_size(other.__width, 45)
	caption = argument[0]
	callback = argument[1]
	
	if nsz > 0 { // 2 or more
		next = other.button_list[| 0] // wrap last to first
		before = other.button_list[| nsz - 1] // link this to before
		
		before.next = id // link before to this
		next.before = id // wrap first to this
	} else { // first
		next = id
		before = id
	}
}

menu_lasty += ay
ds_list_add(button_list, button_id)

return button_id
