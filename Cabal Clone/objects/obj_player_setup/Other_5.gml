/// @description Insert description here
// You can write your code in this editor
if instance_exists(player_one)
	set_player_data(1, player_one.score_count, player_one.life_count, player_one.energy)
	
if instance_exists(player_two)
	set_player_data(2, player_two.score_count, player_two.life_count, player_two.energy)