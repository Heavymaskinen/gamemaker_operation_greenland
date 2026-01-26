/// @description Insert description here
// You can write your code in this editor
if sprite_index == spr_innocent_kneel
	sprite_index = spr_innocent_kneel_still
	
if dead {
	var obj = instance_create_layer(x,y,layer, obj_hostage_dead)
	obj.image_xscale = image_xscale
	obj.image_yscale = image_yscale
	instance_destroy(self)
} else if saved {
	instance_create_depth(x,y,0, item_fast_gun)
	instance_destroy(self)
} else if killed {
	instance_destroy(self)
}