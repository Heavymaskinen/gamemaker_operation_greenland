/// @description Insert description here
// You can write your code in this editor
if is_dead return
is_dead = true
var dead = instance_create_layer(x,y,layer, obj_windox_maga_dead)
dead.image_xscale = image_xscale
dead.image_yscale = image_yscale
dead.sprite_index = sprite_index
dead.image_speed = 0
dead.image_index = sprite_get_number(sprite_index) - 1

obj_player_control.score_count += 100
instance_destroy(self)