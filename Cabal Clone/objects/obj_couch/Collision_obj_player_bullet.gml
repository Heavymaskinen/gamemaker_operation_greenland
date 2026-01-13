/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)


if (image_index < last_image) {
	image_index++
	obj_player_control.score_count += 100
	if (image_index == last_image) {
		obj_player_control.score_count += 300
		if spawn_obj != noone
			instance_create_depth(x,y,0, spawn_obj)
	}
}