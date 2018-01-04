/// @description ui_show_popup(caption)
/// @function ui_show_popup
/// @param caption
with (oZUIMain) {
 var _black = zui_create(0, 0, oUIBlack, -1000);

 with (zui_create(__width * 0.5, __height * 0.5, oUIWindow, -1001)) {
  zui_set_size(256, 112);
  
  black = _black;
  
  with (zui_create(0, 0, oUIWindowCaption)) {
   caption = "Popup";
  }
  
  with (zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5 - 8, oUILabel)) {
   caption = argument0;
  }
  
  with (zui_create(zui_get_width() * 0.5, zui_get_height() - 24, oUIButton)) {
   zui_set_size(96, 28);
   caption = "OK";
   callback = ui_popup_close;
  }
 }
}