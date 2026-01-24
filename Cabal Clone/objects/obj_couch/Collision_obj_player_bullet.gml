/// @description Insert description here
// You can write your code in this editor
if (image_index < last_image) {
	audio_play_sound(snd_light_hit, 2, false,1,0,random_range(0.8,1.2))
	image_index+= other.damage
	obj_player_control.score_count += 100
	
	if (image_index >= last_image) {
		image_index = last_image
		global.couch_count--
		obj_player_control.score_count += 300
		if spawn_obj != noone
			instance_create_depth(x,y,0, spawn_obj)
	}
}

instance_destroy(other)