/// @description Spawn soldier
// You can write your code in this editor
if active_spawn == noone && !dying {
	active_spawn = instance_create_layer(x,y, layer, obj_russian_window_soldier)
	active_spawn.source = self
	active_spawn.image_xscale = image_xscale
	active_spawn.image_yscale = image_yscale
	visible = false	
}