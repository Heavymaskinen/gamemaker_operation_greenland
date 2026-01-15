/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_enemy)) && !cleared {	
	cleared = true	
	return
}

if (cleared) 
{	
	if (obj_player_control.player_instance.y <= 410)
	{
		
		next = true
		if obj_player_control.player_instance.vspeed <0
			alarm_set(0, 50)
			
		obj_player_control.player_instance.vspeed = 0
		
	}
	else 
		obj_player_control.player_instance.vspeed = -2
		
	
	return
}