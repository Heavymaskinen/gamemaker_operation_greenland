/// @description Insert description here
// You can write your code in this editor

if (!dying)
{
	audio_play_sound(snd_light_hit, 1, false)
	image_index+=other.damage
	if (image_index >= count) {
		audio_play_sound(snd_crash2, 1, false)
		dying = true
		image_index = 0
		sprite_index = spr_sign_die
		image_speed =1
		instance_create_depth(x,y,2,item_points)		
	}
}
instance_destroy(other)