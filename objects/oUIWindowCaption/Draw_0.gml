draw_sprite_ext(sWindowCaption, 0, 0, 0, __width / 32, 1, 0, $ffffff, 1);

draw_set_font(fontRegular);
draw_set_halign(1);
draw_set_valign(1);
draw_set_color($ffffff);
draw_text(__width * 0.5, 10, string_hash_to_newline(caption));
