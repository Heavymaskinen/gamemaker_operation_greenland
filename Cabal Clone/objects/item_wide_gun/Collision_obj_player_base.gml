/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_bleep,1,false)
var newAim = instance_create_depth(other.control.player_aim.x, other.control.player_aim.y, other.control.player_aim.layer, obj_player_aim_wide);
	newAim.control = other.control
	instance_destroy(other.control.player_aim)
	other.control.player_aim = newAim
	instance_destroy(self)