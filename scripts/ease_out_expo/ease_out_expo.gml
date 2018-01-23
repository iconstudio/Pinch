/// @description ease_out_expo(value)
/// @function ease_out_expo
/// @param value {real (0 ~ 1)}

if argument0 >= 1
 return 1

return -power(2, -10 * argument0) + 1
