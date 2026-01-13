/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
sprite_index = spr_player_hit2
hit = true
obj_player_control.energy--

if (obj_player_control.energy <=0) {
	dying = true
	hspeed=0
	sprite_index = spr_player_die_old
}