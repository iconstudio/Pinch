/// @description Settings for each room

//instance_create_depth(0, 0, 0, oTest)

if room == roomMain {
	with (zui_main()) {
		zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, oMainMenu)
	}
}
