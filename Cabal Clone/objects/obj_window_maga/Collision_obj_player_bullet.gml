/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
if dying return

dying = true
var rand = irandom_range(0,3)
var sprites = [spr_window_maga_die, spr_window_maga_die_2, spr_window_maga_die_3, spr_window_maga_die_4]
sprite_index = sprites[rand]	
//image_index = 0
