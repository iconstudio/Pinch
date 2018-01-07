/// @description io_check_pressed_down()
/// @function io_check_pressed_down

var _result = keyboard_check_pressed(vk_down)
if gamepad_index != -1
	_result |= gamepad_button_check_pressed(gamepad_index, gp_padd) or gamepad_axis_value(gamepad_index, gp_axislv) > 0.9

return _result
