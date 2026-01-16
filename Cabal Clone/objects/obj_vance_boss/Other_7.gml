/// @description Insert description here
// You can write your code in this editor
if (dying) {
	if level < 6
		notify_level_change()
		
	if level == 7
		dead = true
		
	image_speed = 0
	image_index = sprite_get_number(sprite_index)-1
} else {
	level++
	image_speed = 0
	image_index = 0
	notify_level_change()
}