/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
if dying return

sprite_index = spr_russian_window_still
image_index = 0
image_speed = 1
energy--

if energy <= 0
{
	dying = true
	sprite_index = spr_russian_window_soldier_die
	image_index = 0
	image_speed = 1
}