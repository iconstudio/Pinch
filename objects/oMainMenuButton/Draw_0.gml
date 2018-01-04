
draw_set_alpha(image_alpha)
if (zui_get_hover()) {
 if (pressed)
  draw_set_color($cccccc);
 else
  draw_set_color($eeeeee); 
} else {
 draw_set_color($ffffff);
}

ui_draw_sprite_panel(sButton, 0, 8, -6, -6, __width + 12, __height + 12);

draw_set_font(fontRegular);
draw_set_halign(1);
draw_set_valign(1);
draw_set_color($ffffff);
draw_text(__width * 0.5, __height * 0.5, string_hash_to_newline(caption));

