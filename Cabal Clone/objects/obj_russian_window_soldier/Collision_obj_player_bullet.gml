/// @description Insert description here
// You can write your code in this editor
create_spurt(other.x, other.y, 100)
instance_destroy(other)
if dying return

sprite_index = spr_russian_window_still
image_index = 0
image_speed = 1

energy--
audio_play_sound(snd_light_hit, 2, false, 0.4)

