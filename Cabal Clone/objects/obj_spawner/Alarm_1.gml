/// @description Spawn part of army
group_count--
var obj = instance_create_depth(x, y, self.depth, spawn_obj)
obj.spawner = self
active_spawn_count++
obj.hspeed = spawn_speed

if group_count > 0
	alarm_set(1, irandom_range(10, 40))
else 
	lock = false