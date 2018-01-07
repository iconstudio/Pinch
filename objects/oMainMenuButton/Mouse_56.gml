/// @description Execute callback script

if (pressed) {
	pressed = false;
	if (zui_get_hover()) {
		if (callback >= 0) {
			with oMainMenu
				menu_title = other.caption
			script_execute(callback, id);
		}
	}
}
