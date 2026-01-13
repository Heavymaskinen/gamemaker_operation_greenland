/// @description Insert description here
// You can write your code in this editor
if (dying) return;

dying = true;

sprite_index = spr_stationary_maga_die;
instance_destroy(other);
obj_player_control.score_count += 100