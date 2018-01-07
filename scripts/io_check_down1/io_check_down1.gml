/// @description io_check_pressed_down()
/// @function io_check_pressed_down

var _result = keyboard_check(vk_down)
if gamepad_index != -1
	_result |= gamepad_button_check(gamepad_index, gp_padd) or gamepad_axis_value(gamepad_index, gp_axislv) > 0.6

return _result
