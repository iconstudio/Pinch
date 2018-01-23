/// @description Update



if global.dscore != global.vscore {
	var ascore = (global.dscore - global.vscore)
	global.vscore += ascore/ 5

	svwave -= min(svwave + max(0, svwave) / 10, 7) / 7
} else {
	svwave -= svwave / 4
}

srot = (srot + 6) mod 360
