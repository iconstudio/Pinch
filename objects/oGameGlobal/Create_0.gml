/// @description Game local variables

zui_set_anchor(0, 0)
zui_set_size(__parent.__width, __parent.__height)

global.inventory_opened = false

// clear
global.paused = false
global.my_player = noone

// for drawing a player skill hud, a linear inventory
idx = __width * 0.5
idy = ceil(__height / 20 + 1) * 20

invdw = 40
invdgw = invdw + 8
invdx = idx - invdgw * 2
invddy = idy + 40

gdx = invdx - 50
gdy = idy + 20
