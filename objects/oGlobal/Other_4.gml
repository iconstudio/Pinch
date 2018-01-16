/// @description Settings for each room

camera_set_view_size(camera_get_active(), 800, 400)

if room == roomMain {
	with (zui_main()) {
		zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, oMainMenu)
	}
} else if room > roomMain {
	with (zui_main()) {
		zui_create(0, 0, oGameGlobal, 100)
	}
}
