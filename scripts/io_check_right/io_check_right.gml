/// @description io_check_right()
/// @function io_check_right

var _result = keyboard_check(vk_right)
if gamepad_index != -1
	_result |= gamepad_button_check(gamepad_index, gp_padr) or gamepad_axis_value(gamepad_index, gp_axislh) > 0.6

return _result
