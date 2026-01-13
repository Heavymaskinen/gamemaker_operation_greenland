/// @description Insert description here
// You can write your code in this editor
if (dying) 
{
	sprite_index = spr_player_die
	return
}

if (y < 200) {
	scale = 0.4
}else if (y < 400) {
	scale = 0.8
} else if (y < 450) {
	scale = 1
} else if (y < 500) {
	scale = 1.8
}  

image_xscale = scale
image_yscale = scale


if (obj_player_control.sprite_direction == "left") {
	if (hit)
		sprite_index = spr_player_hit_side
	else
		sprite_index = spr_player_side
		image_xscale = scale
}
else if (obj_player_control.sprite_direction == "right") {
	if (hit)
		sprite_index = spr_player_hit_side
	else
		sprite_index = spr_player_side
	if (image_xscale > 0) {
		image_xscale = -image_xscale
	}
		
} else {
	sprite_index = spr_player
	image_xscale = scale	
}