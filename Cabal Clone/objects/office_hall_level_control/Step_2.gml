/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_enemy)) && !cleared {	
	set_player_target(1202)
	layer_set_visible("level_complete", true)
	cleared = true	
	return
}

if (cleared) 
{	
	if (move_player_forward_to_target(410) && !next) {
		next = true
		alarm_set(0,150)
	}
	
	return
}