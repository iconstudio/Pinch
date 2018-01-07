/// @description Node initialization

zui_set_visible(false)
zui_set_anchor(0, 0)
zui_set_size(800, 300)

image_blend = 0

dmode = 0 // 0: fade in, 1: fade out
menu_lasty = 0

button_list = ds_list_create()
button_focus = noone
button_pos = 0
