/// @description io_check_up()
/// @function io_check_up

var _result = keyboard_check(vk_up)
if gamepad_index != -1
	_result |= gamepad_button_check(gamepad_index, gp_padu) or gamepad_axis_value(gamepad_index, gp_axislv) < -0.6

return _result
