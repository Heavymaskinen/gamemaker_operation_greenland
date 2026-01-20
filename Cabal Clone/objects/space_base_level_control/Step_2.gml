/// @description Check 

if (!instance_exists(obj_enemy)) && !cleared {	
	cleared = true	
	layer_set_visible(layer_get_id("level_complete"), true)
	set_player_target(639)
	return
}

if (cleared) 
{	
	if (move_player_forwards(410) && !next)
	{
		next = true
		alarm_set(0, 150)
	}

	return
}

var spawns = instance_number(obj_trigger_spawn);
if (spawns > 0 && !instance_exists(obj_window_spawn)) {

	for (var i = 0; i < instance_number(obj_trigger_spawn); ++i)
	{
		instance_find(obj_trigger_spawn,i).activate = true;
	}
}