/// @description End of shooting animation
if (hit) {
	if (control.sprite_direction == "left") {
		sprite_index = spr_player_side
		image_xscale = 2
	}
	else if (control.sprite_direction == "right") {
		sprite_index = spr_player_side
		image_xscale = image_xscale <0 ? image_xscale: -image_xscale
	} else {
		sprite_index = spr_player
		image_xscale = 2
		
	}
	hit = false
}
sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
image_index = 0
