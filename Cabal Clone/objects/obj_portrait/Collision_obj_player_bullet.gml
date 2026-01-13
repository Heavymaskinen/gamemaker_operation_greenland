/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
if (image_index<4)
{
	obj_player_control.score_count += 50
	image_index++
	image_angle -= 5
	if (image_index >= 4) {
		obj_player_control.score_count += 100
		if spawn_obj != noone
			instance_create_depth(x,y, 1, spawn_obj)
	}
}