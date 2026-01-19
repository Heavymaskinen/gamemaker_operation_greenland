if dying return

instance_destroy(other)
sprite_index = spr_enemy_jeep_hit
audio_play_sound(snd_light_hit, 1,false, 0.5, 0, random_range(1,2.5))
energy--
if (energy <= 0) {
	dying = true
	audio_play_sound(snd_explosion, 1,false, 0.5)
	effect_create_depth(0,ef_explosion, x + sprite_width/2, y + sprite_height, sprite_width, c_red)
}
