/// @description Update

if global.dscore != global.vscore {
	global.vscore += (global.dscore - global.vscore) / 8
}
