/// @description Game Initialization

randomize()

global.__layer_dict = ds_map_create()
#macro zui_layer

zui_main()
application_surface_draw_enable(false);
layer_force_draw_depth(true, 0)

global.Camera = camera_create()
camera_set_proj_mat(global.Camera, matrix_build_identity())
camera_apply(global.Camera)
camera_set_view_target(global.Camera, oPlayer)

for (var i = room_first; room_exists(i); i = room_next(i)) {
	room_set_view_enabled(i, 0)
	room_set_camera(i, 0, global.Camera)
}

global.Gamepad = -1
global.GamepadType = 0
global.GamepadSprite = array_create(3, sIconControllerXbox, sIconControllerPlayStation, sIconControllerOther)

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
