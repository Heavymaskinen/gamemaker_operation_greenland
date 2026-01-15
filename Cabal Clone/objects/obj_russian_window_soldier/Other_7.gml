/// @description Insert description here
// You can write your code in this editor
if dying
{
	source.active_spawn = noone
	source.visible = true
	instance_destroy(self)
}
if sprite_index == spr_russian_window_enter || spr_russian_window_shoot
{
	ready = true
	sprite_index = spr_russian_window_still
	image_speed = 0
}
else if sprite_index == spr_russian_window_still
{
	ready = true
	image_speed = 0
}