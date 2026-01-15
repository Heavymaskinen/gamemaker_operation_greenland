/// @description Insert description here
// You can write your code in this editor
if dying {
	obj_player_control.score_count += 200
	instance_destroy(self)
}
else if sprite_index == spr_enemy_jeep_hit || sprite_index == spr_enemy_jeep_shoot
	sprite_index = spr_enemy_jeep