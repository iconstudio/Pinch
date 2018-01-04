/// @description io_check_pressed_left()
/// @function io_check_pressed_left

var _result = keyboard_check_pressed(vk_left)
if gamepad_index != -1
	_result |= gamepad_button_check_pressed(gamepad_index, gp_padl) or gamepad_axis_value(gamepad_index, gp_axislh) < -0.9

return _result
