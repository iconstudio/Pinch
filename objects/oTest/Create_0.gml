with (zui_main()) {
 var window_id;
 
 with (zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, oTestWindow, -1)) {
  window_id = id;
 }
 
 // Scale controller
 with (zui_create(zui_get_width() * 0.5, zui_get_height() - 80, oUISlider)) {
  zui_set_anchor(0.5, 0);
  zui_set_width(256);
  minimum = 50;
  maximum = 100;
  value = 100;
  callback = test_callback_slider;
  target = window_id;
 }
 
 with (zui_create(zui_get_width() * 0.5, zui_get_height() - 50, oUILabel)) {
  caption = "Scale";
  color = $ffffff;
 }
}

