/// @description Insert description here
// You can write your code in this editori
if (dying) return;

var screen_start = min(global.scroller.x, room_width-global.screen_width)
var screen_end = max(global.screen_width, global.scroller.x)

if x-hspeed <= screen_start
{
	x = screen_start+hspeed
	hspeed = random_range(3,5)
}

if x+sprite_width+hspeed >= screen_end
{
	x = screen_end - sprite_width - hspeed
	hspeed = 0 - random_range(3,5)
}