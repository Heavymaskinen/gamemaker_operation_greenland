/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)

if (!dying)
{
	image_index++
	if (image_index >= count) {
		dying = true
		image_index = 0
		sprite_index = spr_sign_die
		sprite_set_speed(sprite_index, 20, spritespeed_framespersecond)
		instance_create_depth(x,y,2,item_points)		
	}
}