/// @description Main control logic

if (player_instance.dying) {	
	if (life_count > 0) {
		energy = 20
		life_count--
		player_instance.dying = false
	} else {
		instance_destroy(player_instance)
		instance_destroy(player_aim)
		instance_destroy(self)
	}
	
	return
}
// Move to target
if (player_instance.target_x != -1) {
	shooting = false
	if player_instance.x + 8 < player_instance.target_x
		player_instance.hspeed = 8
	else if player_instance.x - 8 > player_instance.target_x
		player_instance.hspeed = -8
	else
	{
		player_instance.x = player_instance.target_x
		player_instance.hspeed = 0
		player_instance.at_target = true
	}
	
	return	
}

//Scrolling
if (global.scroller.hspeed > 0 && global.scroller.x > player_instance.x) {
	if (global.scroller.x > global.screen_width){		
		player_instance.x = global.scroller.x - global.screen_width/2
		player_aim.x = max(player_aim.x, global.scroller.x-global.screen_width+player_move_speed)
		player_instance.hspeed = global.scroller.hspeed
		player_aim.hspeed = global.scroller.hspeed
		player_aim.vspeed = 0
	} else if (player_instance.x <= abs(global.screen_width/2 - global.scroller.hspeed)) {
		player_instance.hspeed = 0
		player_instance.x = global.screen_width/2
	}
	else if (player_instance.x <= global.screen_width/2) {
		player_instance.hspeed = global.scroller.hspeed
	}
	else if (player_instance.x > global.screen_width/2) {
		player_instance.hspeed = -global.scroller.hspeed
	}
}
else {
	player_instance.hspeed = 0
}
	

var screen_start = min(global.scroller.x, room_width-global.screen_width)
var max_width = max(global.screen_width, global.scroller.x)

// Move aim
player_aim.hspeed = aim_velx;
player_aim.vspeed = aim_vely;

// Shoot
if (shooting && cool_down <= 0) {	
	player_instance.image_speed = 1
	var bullets = player_aim.consumption > 0 ? player_aim.consumption : 1
	for (var i=0;i<bullets;i++) {
		var bullet = instance_create_depth(player_aim.x + player_aim.sprite_width/2+i*random_range(-bullets,bullets), player_aim.y + player_aim.sprite_height/2, 0, player_aim.bullet_type);	
		bullet.owner = player_instance
	}
	cool_down = player_aim.cool_down
}


// Move player along with aim if distance is too big
var aim_direction = player_aim.x - player_instance.x
aim_distance = abs(player_aim.x - player_instance.x);


if (aim_direction < 0 && aim_distance > 100) {
	sprite_direction = "left"
} else if (aim_direction > 2 && aim_distance > 100) {
	sprite_direction = "right"
} else {
	sprite_direction = "mid"
}


if (shooting) {
	var distance = player_aim.x - player_instance.x
	if (distance > aim_range && player_aim.hspeed > 0)
		player_aim.hspeed = 0
		
	if (distance < -aim_range && player_aim.hspeed < 0)
		player_aim.hspeed = 0
}
else
if (aim_distance > 200 || player_aim.x <= screen_start+player_move_speed 
|| player_aim.x >= max_width - player_move_speed) {
	if (player_instance.x < player_aim.x && aim_velx > 0 && !shooting) {
		player_instance.hspeed = player_move_speed;
	}

	if (player_instance.x > player_aim.x && aim_velx < 0 && !shooting) {
		player_instance.hspeed = -player_move_speed;
	}
}

if (cool_down > 0) cool_down--

