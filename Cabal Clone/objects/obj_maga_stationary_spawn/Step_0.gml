/// @description Insert description here
// You can write your code in this editor
if global.scroller.x >= global.screen_width * 1.5
{
	instance_create_depth(x,y, depth, spawn_obj)
	instance_destroy(self)
}