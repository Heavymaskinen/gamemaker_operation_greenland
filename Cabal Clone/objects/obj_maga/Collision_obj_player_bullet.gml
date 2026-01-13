/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
if (dying) return;

hspeed = 0;
dying = true;

var rand = random_range(0,3)
if (rand >= 2)
	sprite_index = spr_maga_die_2;
else
	sprite_index = spr_maga_die_1;

obj_player_control.score_count += 10