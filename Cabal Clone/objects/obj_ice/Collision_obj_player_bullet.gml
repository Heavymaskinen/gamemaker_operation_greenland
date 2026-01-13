/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
if (dying) return
shooting = false
image_blend = make_colour_rgb(0,0,255)
energy--

if (energy > 0) 
{
	alarm_set(1,50)
	return
}
image_blend = clear_color
dying = true
sprite_index = spr_ice_die