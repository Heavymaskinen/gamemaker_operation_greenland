/// @description Insert description here
// You can write your code in this editor
player_instance = instance_find(obj_player, 0)
player_aim = instance_create_depth(player_instance.x + player_instance.sprite_width/2, player_instance.y-100, 0, obj_player_aim);
