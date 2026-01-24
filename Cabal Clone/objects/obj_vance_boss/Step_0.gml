/// @description Bounds check + timer
// You can write your code in this editor
if (!dead && alarm_get(0) <0 && level < 5) {
		alarm_set(0, irandom_range(100,300))
}

var prevspeed = hspeed
if (enforce_horizontal_screen_bounds(self, prevspeed)) {
	hspeed = -prevspeed
}
