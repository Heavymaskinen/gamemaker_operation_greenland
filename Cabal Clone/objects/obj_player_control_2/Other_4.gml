/// @description Insert description here
// You can write your code in this editor
event_inherited()
player_instance = instance_create_layer(680, 640, "player_row", obj_player_2)
player_instance.control = self

player_aim = instance_create_layer(player_instance.x + player_instance.sprite_width/2, player_instance.y-100, "player_row", obj_player_aim);
player_aim.control = self