/// @description io_check_left()
/// @function io_check_left

var _result = keyboard_check(vk_left)
if gamepad_index != -1
	_result |= gamepad_button_check(gamepad_index, gp_padl) or gamepad_axis_value(gamepad_index, gp_axislh) < -0.6

return _result
