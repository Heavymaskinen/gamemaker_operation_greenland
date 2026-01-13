/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_enemy) && !scrolling {
	if (global.scroller.x < global.screen_width) {
		global.scroller.x = global.screen_width
		global.scroller.hspeed = 5
		scrolling = true
	} else {
		cleared = true		
	}
}

if (cleared) 
{	
	if (obj_player_control.player_instance.y <= 410)
		obj_player_control.player_instance.vspeed = 0
	else 
		obj_player_control.player_instance.vspeed = -2
}


if scrolling && global.scroller.hspeed == 0 {
	scrolling = false	
}