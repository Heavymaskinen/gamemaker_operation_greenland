/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = sprite_get_number(sprite_index)-1

if dying  {
	image_index = 11
}
else if active_spawn == noone
	alarm_set(0, irandom_range(150,200))