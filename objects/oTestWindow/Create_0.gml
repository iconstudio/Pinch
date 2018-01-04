zui_set_size(400, 216);
 
with (zui_create(0, 0, oUIWindowCaption)) {
 caption = "Window";
 draggable = 1;
}

with (zui_create(12, 38, oUIButton)) {
 zui_set_anchor(0, 0);
 zui_set_size(120, 32);
 caption = "Button 1";
 callback = test_callback_button;
}

with (zui_create(140, 38, oUIButton)) {
 zui_set_anchor(0, 0);
 zui_set_size(120, 32);
 caption = "Button 2";
 callback = test_callback_button;
}

with (zui_create(268, 38, oUIButton)) {
 zui_set_anchor(0, 0);
 zui_set_size(120, 32);
 caption = "Button 3";
 callback = test_callback_button;
}

with (zui_create(12, 82, oUIButton)) {
 zui_set_anchor(0, 0);
 zui_set_size(376, 80);
 caption = "Button 4";
 callback = test_callback_button;
}

with (zui_create(12, 170, oUICheckbox)) {
 zui_set_anchor(0, 0);
}

with (zui_create(36, 170, oUICheckbox)) {
 zui_set_anchor(0, 0);
 value = 1;
}

with (zui_create(60, 170, oUISlider)) {
 zui_set_anchor(0, 0);
 zui_set_width(128);
 minimum = 4;
 maximum = 8;
 value = 6;
}

with (zui_create(196, 170, oUISlider)) {
 zui_set_anchor(0, 0);
 zui_set_width(192);
 minimum = 0;
 maximum = 100;
 value = 80;
}

with (zui_create(zui_get_width() * 0.5, zui_get_height() - 16, oUILabel)) {
 other.position_label = id;
}
