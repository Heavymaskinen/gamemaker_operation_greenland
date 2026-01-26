/// @description Bounds check
// You can write your code in this editor
if global.scroller.hspeed != 0 || player_instance.target_x != -1 return

enforce_horizontal_screen_bounds(player_aim, aim_move_speed)
enforce_vertical_screen_bounds(player_aim, aim_move_speed, player_instance.y+ get_height(player_instance)/2)
enforce_horizontal_screen_bounds(player_instance, player_move_speed)
