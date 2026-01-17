/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_bleep,1,false)
var newAim = instance_create_depth(obj_player_control.player_aim.x, obj_player_control.player_aim.y, obj_player_control.player_aim.layer, obj_player_aim_fast);
	instance_destroy(obj_player_control.player_aim)
	obj_player_control.player_aim = newAim
	instance_destroy(self)