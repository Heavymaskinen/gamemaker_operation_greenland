/// @description Insert description here
// You can write your code in this editor
if (dying) 
{
	if sprite_index == spr_ice_slip
		instance_create_depth(x,y, 1, item_points, {points: 1000})
	else
		obj_player_control.score_count += 200

	instance_destroy(self)
}
else 
{
	shooting = false
	sprite_index = spr_ice		
}