/// @description Insert description here
// You can write your code in this editor
if vspeed > 0 && y >= obj_floor_threshold.y {
	instance_destroy(self)
}

vspeed += gravity
life_time += 0.2