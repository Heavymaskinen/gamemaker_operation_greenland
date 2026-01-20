/// @description Insert description here
// You can write your code in this editor
if ammo <= 0 && consumption > 0
{
	var newAim = instance_create_depth(x, y, depth, obj_player_aim);
	newAim.control = control
	control.player_aim = newAim
	instance_destroy(self)
}