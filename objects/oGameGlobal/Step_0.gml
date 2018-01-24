/// @description Update


var ascore = 0
if global.dscore != global.vscore {
	ascore = (global.dscore - global.vscore)
	global.vscore += ascore / 5
}

//svwave -= min(svwave + max(0, ascore) / 10, 8) / 8
srot = (srot + 6) mod 360
