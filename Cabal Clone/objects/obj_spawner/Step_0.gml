/// @description Insert description here
// You can write your code in this editor
if (!lock && active_spawn_count <= 0 && alarm_get(0) <= 0)
{
	lock = true
	if (army_size>0)
	{
		alarm_set(0, irandom_range(100, 200))
	}
	else
		instance_destroy(self)
}