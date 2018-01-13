/// @description Game variables

zui_set_anchor(0, 0)
zui_set_size(__parent.__width, __parent.__height)

global.inventory_opened = false

// DON'T GET CONFUSED!
global.player_items = ds_list_create() // only be got and gain constant effects
global.player_inventory = ds_list_create() // weapon, bullets, usable, etc...

