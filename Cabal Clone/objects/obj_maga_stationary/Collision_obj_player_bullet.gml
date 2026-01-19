/// @description Insert description here
// You can write your code in this editor
if (dying) return;

dying = true;

audio_play_sound(snd_argh3, 1,false, 0.5, 0, random_range(1,1.5))
sprite_index = spr_stationary_maga_die;
instance_destroy(other);
obj_player_control.score_count += 100