/// @description Bounds check + timer
// You can write your code in this editor
if (!dead && alarm_get(0) <0 && level < 5) {
		alarm_set(0, irandom_range(100,300))
}

var screen_start = min(global.scroller.x, room_width-global.screen_width)
var screen_end = global.screen_width- sprite_width

if x-hspeed <= screen_start
{
	x = screen_start+hspeed
	hspeed = random_range(3,5)
}

if x+hspeed >= screen_end
{
	x = screen_end - hspeed
	hspeed = -random_range(3,5)
}