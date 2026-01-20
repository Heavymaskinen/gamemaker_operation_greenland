/// @description Insert description here
// You can write your code in this editor
if energy <= 0 && !dying
{
	audio_play_sound(snd_argh, 2, false)
	dying = true
	sprite_index = spr_russian_window_soldier_die
	image_index = 0
	image_speed = 1
	create_spurt(x+sprite_width/2, y+sprite_height/2, irandom_range(500,800))
}