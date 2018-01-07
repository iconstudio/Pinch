/// @description io_check_pressed_up()
/// @function io_check_pressed_up

var _result = keyboard_check_pressed(vk_up)
if gamepad_index != -1
	_result |= gamepad_button_check_pressed(gamepad_index, gp_padu) or gamepad_axis_value(gamepad_index, gp_axislv) < -0.9

return _result
