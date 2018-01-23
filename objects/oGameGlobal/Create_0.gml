/// @description Game local variables

zui_set_anchor(0, 0)
zui_set_size(__parent.__width, __parent.__height)

// clear
global.inventory_opened = false
global.paused = false

// for drawing a player skill hud, a linear inventory
pause_push = 0
sdx = __width * 0.5
sdy = ceil(__height / 20 + 2) * 20
idx = sdx
idy = sdy

invdw = 40
invdgw = invdw + 8
invdx = idx - invdgw * 2
invddy = idy + 40

gdx = invdx - 50
gdy = idy + 20

srot = 0
svwave = 0
svdx = 10
svdy = -60
