/// @description hovering

if !__parent.__visible
	return;

if (zui_get_hover() and mouse_check_button_pressed(mb_left))
or (io_check_pressed_jump() and __parent.__visible and __parent.button_focus == id) {
	pressed = true
}

if mouse_check_button_released(mb_left) or io_check_released_jump() {
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
