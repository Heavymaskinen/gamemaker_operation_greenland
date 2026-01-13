/// @description Insert description here
if dying || shooting {
	hspeed = 0
	return
}

var screen_start = min(global.scroller.x, room_width-global.screen_width)
var max_width = max(global.screen_width, global.scroller.x)

if (x - hspeed - sprite_width*scale < screen_start)
{
	x = screen_start + sprite_width*scale + hspeed + 1
	hspeed = 5		
}
else if (x + sprite_width*scale + hspeed > max_width)
{
	x = max_width - sprite_width*scale - hspeed -1
	hspeed = -5
	
}

