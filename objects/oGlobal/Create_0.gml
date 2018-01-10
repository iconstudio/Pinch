/// @description Game variables

global.my_player = noone

callto = noone
construct = array_create(3, noone, "", "")
notification_list = ds_list_create()

if shaders_are_supported() and shader_is_compiled(shaderFXAA)
	fxaa_on = true
else
	fxaa_on = false
fxaa_strength = 4

fxaa_on = false
