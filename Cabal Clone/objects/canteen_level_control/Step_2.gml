/// @description Check clear conditions

if !instance_exists(obj_enemy) && !scrolling {
	if (global.scroller.x < global.screen_width) {
		global.scroller.x = global.screen_width
		global.scroller.hspeed = 5
		scrolling = true
	} else {
		set_player_target(2824)
		layer_set_visible(layer_get_id("level_complete"), true)
		cleared = true		
	}
}

if (cleared) 
{	
	if (move_player_forward_to_target(410) && !next) {
		next = true
		alarm_set(0,150)
	}
	
	return
}


if scrolling && global.scroller.hspeed == 0 {
	scrolling = false	
}