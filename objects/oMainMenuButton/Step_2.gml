/// @description hovering

if __parent.button_focus == id and io_check_pressed_jump() {
	pressed = true
	__hover = true
	event_perform(ev_mouse, ev_global_left_release)
}

if zui_get_hover() || __parent.button_focus == id {
	__parent.button_focus = id
	if hpush < 1
		hpush += hpush * 0.2 + 0.01
	else
		hpush = 1
} else { 
	if hpush != 0
		hpush -= hpush * 0.04
}
