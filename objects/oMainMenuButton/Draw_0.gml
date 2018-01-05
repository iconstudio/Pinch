/// @description Drawing a complex button

draw_set_alpha(image_alpha)
draw_set_color($ffffff);
ui_draw_sprite_panel(sButton, 0, 8, -6, 0, __width + 6, __height + 10);

if (zui_get_hover()) {
 if (pressed)
  draw_set_color($303030);
 else
  draw_set_color($141414); 
} else {
 draw_set_color(0);
}
draw_rectangle(0, 0, __width, __height, false)

draw_set_font(fontRegular);
draw_set_halign(0);
draw_set_valign(1);
draw_set_color($ffffff);
draw_text(__width * 0.1, __height * 0.5, string_hash_to_newline(caption));
