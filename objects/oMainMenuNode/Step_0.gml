/// @description 

if dmode == 1 {
	zui_set_visible(false)	
} else if zui_get_visible() {
	var my = io_check_pressed_up() - io_check_pressed_down()
	
	if my != 0 {
		if my == -1
			button_focus = button_focus.next
		else
			button_focus = button_focus.before
	}
}
