/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
if (!dying)
{
	audio_play_sound(snd_light_hit, 1, false)
	image_index++
	if (image_index >= count) {
		audio_play_sound(snd_crash2, 1, false)
		dying = true
		image_index = 0
		sprite_index = spr_sign_die
		sprite_set_speed(sprite_index, 20, spritespeed_framespersecond)
		instance_create_depth(x,y,2,item_points)		
	}
}