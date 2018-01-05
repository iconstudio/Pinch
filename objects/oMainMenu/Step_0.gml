/// @description Update

if dmode == 0 {
	if __scalex != 1
		__scalex += (1 - __scalex) / 8
	__scaley = __scalex
	ipush = 0
} else {
	//if ipush++ > second(1) {
		if __scalex != 0
			__scalex -= __scalex / 3
		__scaley = __scalex
	//}
	
	if dmode == 2 {
		if __scalex == 0
			game_end()
	}
}

