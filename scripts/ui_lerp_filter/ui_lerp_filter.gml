/// @description ui_lerp_filter(value,start,end)
/// @function ui_lerp_filter
/// @param value
/// @param start
/// @param end
return clamp((argument0 - argument1) / (argument2 - argument1), 0, 1);