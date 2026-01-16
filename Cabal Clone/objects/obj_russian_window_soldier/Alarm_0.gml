/// @description Insert description here
// You can write your code in this editor
if dying return
	
ready = false
sprite_index = spr_russian_window_shoot
image_index = 0
image_speed = 1
var bullet = instance_create_depth(x+sprite_width/2, y+sprite_height/2, 0, obj_enemy_bullet)
bullet.image_blend = make_colour_rgb(255,0,0)
bullet.speed = 5
bullet.direction = point_direction(x,y, obj_player.x, obj_player.y)
