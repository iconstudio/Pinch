/// @description Drawing a complex button

var alpha = draw_get_alpha()
var dalpha = alpha * image_alpha

draw_set_alpha(dalpha)
draw_set_color($ffffff)
ui_draw_sprite_panel(sButton, 0, 8, -6, -6, __width + 6, __height + 14)

draw_set_color(0)
draw_rectangle(0, 0, __width, __height, false)

var factor = 0.2
if (zui_get_hover() || __parent.button_focus == id) {
 if (pressed)
  factor = 0.4
}
draw_set_color($ffffff)
draw_set_alpha(dalpha * hpush * factor)
draw_rectangle(0, 0, __width, __height, false)

draw_set_alpha(dalpha)
draw_set_color($ffffff)
draw_set_font(fontRegular)
draw_set_halign(0)
draw_set_valign(1)
draw_text(__width * 0.1, __height * 0.5, string_hash_to_newline(caption))

draw_set_alpha(alpha)
