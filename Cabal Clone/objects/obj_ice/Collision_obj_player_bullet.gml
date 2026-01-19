/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
if (dying) return
shooting = false
image_blend = make_colour_rgb(0,0,255)
energy--
audio_play_sound(snd_light_hit, 2, false, 0.5,0, random_range(1,2.5));

if (energy > 0) 
{
	create_spurt(x+sprite_width/2, y +sprite_height/2, irandom_range(100,200))
	alarm_set(1,50)
	return
}
create_spurt(x+sprite_width/2, y +sprite_height/2, irandom_range(700,800))
audio_play_sound(snd_argh3, 2, false, 1,0, random_range(0.5,2));
image_blend = clear_color
dying = true
sprite_index = spr_ice_die