/// @description hovering

if zui_get_hover() {
	if hpush < 1
		hpush += hpush * 0.2 + 0.01
	else
		hpush = 1
} else { 
	if hpush != 0
		hpush -= hpush * 0.04
}
