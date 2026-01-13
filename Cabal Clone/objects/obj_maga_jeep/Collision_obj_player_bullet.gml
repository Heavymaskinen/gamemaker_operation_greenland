if dying return

instance_destroy(other)
sprite_index = spr_enemy_jeep_hit
energy--
if (energy <= 0) {
	dying = true
	effect_create_depth(0,ef_explosion, x + sprite_width/2, y + sprite_height, sprite_width, c_red)
}
