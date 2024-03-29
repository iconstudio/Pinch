/// @description Game global variables

global.paused = false
global.my_player = noone

global.vscore = 0 // virtual score
global.dscore = 0 // destination score

// DON'T GET CONFUSED!
global.player_items = ds_list_create() // only be got and gain constant effects
global.player_inventory = ds_list_create() // weapon, bullets, usable, etc...
global.player_skills = ds_list_create()

callto = noone
construct = array_create(3, noone, "", "")
notification_list = ds_list_create()

if shaders_are_supported() and shader_is_compiled(shaderFXAA)
	fxaa_on = true
else
	fxaa_on = false
fxaa_strength = 4

// debugging
//fxaa_on = false
