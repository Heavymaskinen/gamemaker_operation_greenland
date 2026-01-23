/// @description Insert description here
// You can write your code in this editor
var screen_start = min(global.scroller.x, room_width-global.screen_width)
var max_width = max(global.screen_width, global.scroller.x)

draw_rectangle(screen_start+aim_move_speed, 0,screen_start, 700, false)
draw_rectangle(max_width-aim_move_speed, 0, max_width, 700, false)