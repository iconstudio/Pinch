/// @description hovering

if !__parent.__visible
	return;

var _vk_check_p = io_check_pressed_jump() or keyboard_check_pressed(vk_enter)
if (zui_get_hover() and mouse_check_button_pressed(mb_left))
or (_vk_check_p and __parent.__visible and __parent.button_focus == id) {
	pressed = true
}

var _vk_check_r = io_check_released_jump() or keyboard_check_released(vk_enter)
if mouse_check_button_released(mb_left) or _vk_check_r {
	if (pressed) {
		pressed = false
		if (callback >= 0) {
			with oMainMenu
				menu_title = other.caption
			script_execute(callback, id)
		}
	}
}

if zui_get_hover() or __parent.button_focus == id {
	__parent.button_focus = id
	if hpush < 1
		hpush += hpush * 0.2 + 0.2
	else
		hpush = 1
} else { 
	if hpush != 0
		hpush -= hpush * 0.4
}
/*
var stex = sprite_get_texture(sprite_index, image_index)
var sx = x - sprite_xoffset
var sy = y - sprite_yoffset

draw_primitive_begin_texture(pr_trianglefan, stex)
draw_vertex_texture(sx, sy, 0, 0)
draw_vertex_texture(sx + sprite_width, sy, 1, 0)
draw_vertex_texture(sx, sy + sprite_height, 0, 1)

draw_vertex_texture(sx + sprite_width, sy, 1, 0)
draw_vertex_texture(sx, sy + sprite_height, 0, 1)
draw_vertex_texture(sx + sprite_width, sy + sprite_height, 1, 1)
draw_primitive_end()
*/
