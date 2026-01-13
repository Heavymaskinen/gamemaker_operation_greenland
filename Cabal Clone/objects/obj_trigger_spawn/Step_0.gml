/// @description Insert description here
// You can write your code in this editor
if activate {
	var obj = instance_create_depth(x,y,depth,spawn_obj)
	obj.hspeed = spawn_hspeed
	instance_destroy(self)
}