/// @description Insert description here
// You can write your code in this editor
player_instance = instance_find(obj_player, 0)
player_aim = instance_create_depth(player_instance.x + player_instance.sprite_width/2, player_instance.y-100, 0, obj_player_aim);
life_count = global.player_lives
score_count = global.player_score
energy = global.player_energy