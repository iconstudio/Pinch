/// @description Gamepad recognize

var type = ds_map_find_value(async_load, "event_type");

if type == "gamepad discovered" {
	var index = ds_map_find_value(async_load, "pad_index");
	
	if index >= 0 && gamepad_index != index {
		 gamepad_index = index
		 gamepad_setting(index)
		 
		 var description;
		 var cerif = string_lower(gamepad_get_description(gamepad_index))
		 if string_pos("xbox", cerif) != 0 {
			 description = "Xbox Gamepad"
			 gamepad_type = gamepad_type_xbox
		 } else if string_pos("playstation", cerif) != 0 {
			 description = "PlayStation Gamepad"
			 gamepad_type = gamepad_type_playstation
		 } else {
			 description = "Other Gamepad"
			 gamepad_type = gamepad_type_other
		 }
		 
		 notification_add(gamepad_sprite, "Gamepad Recognized", description)
		 show_debug_message("Gamepad plug in")
	}
} else if type == "gamepad lost" {
	var index = ds_map_find_value(async_load, "pad_index");
	
	if index == gamepad_index {
		gamepad_index = -1
		
		notification_add(sIconControllerOff, "Gamepad Disconnected", "")
		show_debug_message("Gamepad plug off")
	}
}
