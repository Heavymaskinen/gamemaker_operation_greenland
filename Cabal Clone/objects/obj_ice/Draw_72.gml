/// @description Insert description here
if (shooting || dying) return
if hspeed > 0
{
	sprite_index = spr_ice_walk
	image_xscale = scale
}
else if hspeed < 0
{
	
	sprite_index = spr_ice_walk
	image_xscale = image_xscale <0 ? image_xscale : -image_xscale
} 
else 
{
	sprite_index = spr_ice
}