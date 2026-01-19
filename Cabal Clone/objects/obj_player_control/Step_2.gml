/// @description Bounds check
// You can write your code in this editor
if global.scroller.hspeed != 0 || player_instance.target_x != -1 return

var screen_start = min(global.scroller.x, room_width-global.screen_width)
var max_width = max(global.screen_width, global.scroller.x)

if (obj_player.x - player_move_speed < screen_start) {
	obj_player.x = player_move_speed;
	obj_player.hspeed = 0;
}

if (obj_player.x + player_move_speed > max_width) {
	obj_player.x = max_width-player_move_speed;
	obj_player.hspeed = 0;
}

if (player_aim.x < player_move_speed) {
	player_aim.x = player_move_speed;
	player_aim.hspeed = 0;
}

if (player_aim.x + 64 > max_width-player_move_speed) {
	player_aim.x = max_width-player_move_speed - 64;
	player_aim.hspeed = 0;
}

if (player_aim.y < player_move_speed) {
	player_aim.y = player_move_speed;
	player_aim.vspeed = 0;
}

if (player_aim.y > obj_player.y-player_move_speed) {
	player_aim.y = obj_player.y-player_move_speed;
	player_aim.vspeed = 0;
}
