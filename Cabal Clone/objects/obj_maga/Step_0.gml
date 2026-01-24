/// @description Movement
// You can write your code in this editori
if (dying) return;

var prevspeed = hspeed
if (enforce_horizontal_screen_bounds(self, prevspeed)) {
	hspeed = -prevspeed*0.78//(-prevspeed/prevspeed) * random_range(3, 5)
}