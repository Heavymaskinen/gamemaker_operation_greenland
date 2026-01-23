/// @description Insert description here
// You can write your code in this editor
if dying && !dead
{
	if (active_spawn != noone) 
		active_spawn.energy = 0
	else
	{
		visible = true
		sprite_index = spr_russian_window_spawn_dying
		image_speed = 1
		dead = true
		alarm_set(0, -1)
	}
}