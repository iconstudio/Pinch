/// @description hovering

if !__parent.__visible
	return;

if (zui_get_hover() and mouse_check_button_pressed(mb_left))
or (io_check_pressed_jump() and __parent.__visible and __parent.button_focus == id) {
	pressed = true
}

if mouse_check_button_released(mb_left) or io_check_released_jump() {
	if (pressed) {
		pressed = false
		if (callback >= 0) {
			with oMainMenu
				menu_title = other.caption
			script_execute(callback, id)
		}
	}
}

if zui_get_hover() or __parent.button_focus == id {
	__parent.button_focus = id
	if hpush < 1
		hpush += hpush * 0.2 + 0.1
	else
		hpush = 1
} else { 
	if hpush != 0
		hpush -= hpush * 0.04
}
