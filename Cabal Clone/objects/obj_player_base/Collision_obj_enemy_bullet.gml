/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
sprite_index = spr_player_hit
hit = true
control.energy--
audio_play_sound(snd_player_hit,2,false)

if (control.energy <=0) {
	audio_play_sound(snd_player_die,0,false)
	dying = true
	hspeed=0
	sprite_index = spr_player_die_old
}