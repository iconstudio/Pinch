/// @description Game Initialization

randomize()

var dw = 800
var dh = 400
//window_set_fullscreen(true)
//*
//var dw = display_get_width()
//var dh = display_get_height()

//var wscale = 800 / dw
//var screenheight = 400 / wscale
//var screeny = abs(screenheight - dh) / 2

for (var i = room_first; room_exists(i); i = room_next(i)) {
	room_set_view_enabled(i, true)
	room_set_viewport(i, 0, true, 0, 0, dw, dh)
}

display_set_gui_size(800, 400);
window_set_size(dw, dh);
//*/

global.Gamepad = -1
global.GamepadType = 0
global.GamepadSprite = array_create(3, sIconControllerXbox, sIconControllerPlayStation, sIconControllerOther)

zui_main()
application_surface_draw_enable(false)

#macro gamepad_type_xbox 0
#macro gamepad_type_playstation 1
#macro gamepad_type_other 2

#macro gamepad_index global.Gamepad
#macro gamepad_type global.GamepadType
#macro gamepad_sprite global.GamepadSprite[global.GamepadType]

if gamepad_is_supported() {
	gp_number = gamepad_get_device_count()
	
	if gp_number > 0 {
		for (var i = 0; i < gp_number; ++i) {
			if gamepad_is_connected(i) {
				gamepad_index = i // only pick first controller
				var cerif = string_lower(gamepad_get_description(i))
				if string_pos("xbox", cerif) != 0 {
					gamepad_type = gamepad_type_xbox
				} else if string_pos("playstation", cerif) != 0 {
					gamepad_type = gamepad_type_playstation
				} else {
					gamepad_type = gamepad_type_other
				}
				break
			}
		}
	}
}

instance_create_depth(0,  0,  -1000, oGlobal)

#macro status_idle 0
#macro status_await 1
#macro status_ladder 30
#macro status_stun 80
#macro status_dead 98

alarm[0] = 1;
