/// @description Insert description here
// You can write your code in this editor
if ammo <= 0 && consumption > 0
{
	audio_play_sound(snd_gun_empty,2, false)
	var newAim = instance_create_depth(x, y, depth, obj_player_aim);
	newAim.control = control
	control.player_aim = newAim
	instance_destroy(self)
}