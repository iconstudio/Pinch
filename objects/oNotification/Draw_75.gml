/// @description Drawing a push notification

var sx = view_wport
var dx = sx - 280 * min(1, rpush * 2)
var dy = global.gui_hsize / 10 + y
var hy = dy + 80

draw_set_alpha(rpush)
draw_set_color(backcolor)
draw_rectangle(dx, dy, sx, hy, false)
draw_set_color(color)
draw_rectangle(dx, dy - 1, sx + 1, hy + 1, true)

var fdx = dx + 28
if sprite_exists(icon) {
	draw_sprite_ext(icon, 0, dx + 8, dy + 8, 1, 1, 0, $ffffff, rpush)
	fdx += 54
} else {
	draw_rectangle(dx, dy, dx + 20, hy, false)
}

draw_set_font(fontPushTitle)
draw_set_halign(0)
draw_set_valign(0)
draw_text(fdx, dy + 8, caption)

draw_set_font(fontPushDescription)
draw_text(fdx, dy + 40, description)
