/// @description Insert description here
// You can write your code in this editor
if ammo <= 0 && consumption > 0
{
	var newAim = instance_create_depth(obj_player_control.player_aim.x, obj_player_control.player_aim.y, obj_player_control.player_aim.layer, obj_player_aim);
	instance_destroy(obj_player_control.player_aim)
	obj_player_control.player_aim = newAim
	instance_destroy(self)
}