/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
if (dying) return;
audio_play_sound(snd_yell_2, 1, false, random_range(0.8, 1),0, random_range(0.5,2));
die_sounds = [snd_yell_2, snd_yell_3]
hspeed = 0;
dying = true;

var rand = random_range(0,3)
if (rand >= 2)
	sprite_index = spr_maga_die_2;
else
	sprite_index = spr_maga_die_1;

obj_player_control.score_count += 10