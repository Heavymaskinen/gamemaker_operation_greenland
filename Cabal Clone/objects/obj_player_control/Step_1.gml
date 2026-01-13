/// @description Input handling

self.aim_velx = 0;
self.aim_vely = 0;
self.direction = 0;
//self.shooting = false;

if (keyboard_check(vk_left)) {
	self.aim_velx = -self.aim_move_speed;
	self.direction += 180;
}
if (keyboard_check(vk_right)) {
	self.aim_velx = self.aim_move_speed;
	self.direction = 0;
}
if (keyboard_check(vk_up)) {
	self.aim_vely = -self.aim_move_speed;
	self.direction += 90;
}
if (keyboard_check(vk_down)) {
	self.aim_vely = self.aim_move_speed;
	self.direction += 270;
}

if (keyboard_check(vk_numpad2)) {
	player_instance.vspeed = -5
}


if (keyboard_check(vk_numpad3) && !instance_exists(item_fast_gun)) {
	instance_create_depth(500,300, 1, item_fast_gun)
}

if (keyboard_check(vk_space)) {
	self.shooting = true;
	player_aim.shooting = true;
} else {
	shooting = false;
	player_aim.shooting = false;
}
