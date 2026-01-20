/// @description Insert description here
// You can write your code in this editor

player_one = instance_create_layer(0, 0, "player_row", obj_player_control)
if (global.player_count == 2)
	player_two = instance_create_layer(0, 0, "player_row", obj_player_control_2)