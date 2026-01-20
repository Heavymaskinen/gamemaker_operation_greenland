/// @description Input handling

self.aim_velx = 0;
self.aim_vely = 0;
self.direction = 0;
if player_instance.target_x != -1 {
	shooting = false;
	player_aim.shooting = false;
	player_aim.visible = false
	return
}

if (keyboard_check(left_key)) {
	self.aim_velx = -self.aim_move_speed;
	self.direction += 180;
}
if (keyboard_check(right_key)) {
	self.aim_velx = self.aim_move_speed;
	self.direction = 0;
}
if (keyboard_check(up_key)) {
	self.aim_vely = -self.aim_move_speed;
	self.direction += 90;
}
if (keyboard_check(down_key)) {
	self.aim_vely = self.aim_move_speed;
	self.direction += 270;
}

if (keyboard_check(fire_key) && cool_down <= 0) {
	self.shooting = true;
	player_aim.shooting = true;
} else {
	shooting = false;
	player_aim.shooting = false;
}
