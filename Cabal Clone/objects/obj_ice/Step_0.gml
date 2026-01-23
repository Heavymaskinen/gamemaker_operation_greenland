/// @description Insert description here
if dying || shooting {
	hspeed = 0
	return
}

var prevspeed = hspeed
if (enforce_horizontal_screen_bounds(self, prevspeed)) {
	hspeed = -prevspeed
}


