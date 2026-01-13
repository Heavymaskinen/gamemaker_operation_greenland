/// @description Insert description here
// You can write your code in this editor

var obstacle = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_obstacle,false, true)
if obstacle != noone {
	other_depth = obstacle.depth
}
	
blocked = obstacle != noone && obstacle.depth <= depth
