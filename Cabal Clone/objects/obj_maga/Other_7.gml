/// @description Insert description here
// You can write your code in this editor
if (self.dying){	
	if (spawner)
		spawner.active_spawn_count--
		
	instance_destroy(self);
}