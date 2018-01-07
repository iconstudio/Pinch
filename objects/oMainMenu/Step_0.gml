/// @description Update

if dmode == 0 {
	if __scalex != 1
		__scalex += (1 - __scalex) / 4
	__scaley = __scalex
	ipush = 0
} else {
	//if ipush++ > second(1) {
		if __scalex != 0
			__scalex -= __scalex / 4
		__scaley = __scalex
	//}
	
	if __scalex < 0.01 {
		if dmode == 2
			game_end()
		else if dmode == 3
			room_goto(roomGame1)
	}
}

