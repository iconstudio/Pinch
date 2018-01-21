/// @description Node initialization

zui_set_visible(false)
zui_set_anchor(0, 0)
zui_set_size(global.main_node_wsize, global.main_node_hsize)

image_blend = 0

dmode = 0 // 0: fade in, 1: fade out
menu_lasty = zui_get_height() * 0.25

button_list = ds_list_create()
button_focus = noone
