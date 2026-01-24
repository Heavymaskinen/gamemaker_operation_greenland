/// @description Insert description here
// You can write your code in this editor

instance_destroy(other)
if (!dying) {

hit = true
control.energy--
audio_play_sound(snd_player_hit,2,false)
image_speed = 1

if (control.energy <= 0) {
		audio_play_sound(snd_player_die,0,false)
		dying = true
		hspeed=0
	}

}