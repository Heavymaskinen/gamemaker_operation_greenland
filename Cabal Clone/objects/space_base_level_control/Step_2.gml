/// @description Check 

if (!instance_exists(obj_enemy)) && !cleared {	
	cleared = true	
	return
}

if (cleared) 
{	
	if (obj_player_control.player_instance.y <= 410)
	{
		
		if obj_player_control.player_instance.vspeed <0
			alarm_set(0, 50)
			
		obj_player_control.player_instance.vspeed = 0
		
	}
	else 
		obj_player_control.player_instance.vspeed = -2
}

var spawns = instance_number(obj_trigger_spawn);
if (spawns > 0 && !instance_exists(obj_window_spawn)) {

	for (var i = 0; i < instance_number(obj_trigger_spawn); ++i)
	{
		instance_find(obj_trigger_spawn,i).activate = true;
	}
}