/// @description Bounds check
// You can write your code in this editor
if global.scroller.hspeed != 0 || player_instance.target_x != -1 return

var screen_start = min(global.scroller.x, room_width-global.screen_width)
var max_width = max(global.screen_width, global.scroller.x)

obj_debugger.text = ""
enforce_horizontal_screen_bounds(player_aim, aim_move_speed)
enforce_vertical_screen_bounds(player_aim, aim_move_speed, player_instance.y+ get_height(player_instance)/2)
enforce_horizontal_screen_bounds(player_instance, player_move_speed)
