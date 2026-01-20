function notify_level_change(){
	for (var i = 0; i < instance_number(obj_russian_window_spawn); ++i)
	{
	    instance_find(obj_russian_window_spawn, i).refresh();
	}
}

function create_spurt(x, y, number){
	part_particles_create(global.P_System, x, y, global.Particle1, number);
}

function setup_particles(layer_name) {
	global.P_System=part_system_create_layer(layer_get_id("particles"), true)
	global.Particle1 = part_type_create();
	part_type_shape(global.Particle1, pt_shape_pixel);
	part_type_size(global.Particle1, 1, 2, 0, 0.01);
	part_type_color3(global.Particle1, c_red, c_purple, c_maroon);
	part_type_speed(global.Particle1, 3, 10, -0.10, 0.2);
	part_type_direction(global.Particle1, 0, 359, 0.5, 2);
	part_type_life(global.Particle1, 10, 35);
}

function setup_player(player_number) {
	var obj = {
		player_score : 0,
		player_lives : 3,
		player_energy : 20
	}
	
	if player_number == 1
		global.player_1_data = obj
	else
		global.player_2_data = obj
}

function get_player_data(player_number) {
	if player_number == 1
		return global.player_1_data
	
	return global.player_2_data
}

function get_player(player_number) {
	if player_number == 1
		return obj_player_setup.player_one.player_instance
	
	if global.player_count == 1
		return noone
		
	return obj_player_setup.player_two.player_instance
}

function set_player_data(player_number, player_score, player_lives, player_energy) {
	var obj = {
		player_score : player_score,
		player_lives : player_lives,
		player_energy : player_energy
	}
	
	if player_number == 1
		global.player_1_data = obj
	else
		global.player_2_data = obj
}

function kill_em_all() {
	for (var i=0;i<instance_number(obj_enemy);i++) {
		instance_destroy(instance_find(obj_enemy,i))
	}
}

function set_player_target(target_x) {
	get_player(1).target_x = target_x
	
	if global.player_count == 2
		get_player(2).target_x = target_x-64
}

function is_player_at_target() {
	var at_target = get_player(1).at_target

	return global.player_count == 1 ? at_target : at_target && get_player(2).at_target
}

function move_player_forwards(target_y) {
	var result = move_player_forward_to_target(target_y, get_player(1))
	
	return global.player_count == 1 ?
		result:
		move_player_forward_to_target(target_y, get_player(2)) && result
}

function move_player_forward_to_target(target_y = 410, player) {
	if (player.at_target)
	{
		if (player.y <= target_y)
		{
			player.vspeed = 0
			return true
		}
		else {
			player.vspeed = -2
		}
	}
	return false
}

function draw_hud(control,x, y) {
	draw_rectangle_colour(x,y, x+300, y+100, c_gray, c_white, c_dkgray, c_black, false)
	draw_sprite_ext(spr_pingo_head, 3 - control.life_count, x+5, y+5, 0.2, 0.2, 0, c_white, c_purple)
	draw_set_colour(c_red)
	draw_text(x+100,y+10, "Score "+string(control.score_count))
	for (var i=0;i<control.life_count;i++) {
			draw_set_colour(c_green)
			draw_circle(x+100+i*20, y+50,10,false)
	}

	for (var i=0;i<control.energy;i++) {
			var xx = x+200+i*3
			draw_set_colour(c_red)
			draw_rectangle(xx,y+40,xx+1,y+50,false)
	}

	for (var i=0;i<control.player_aim.ammo;i++) {
			var xx = x+5+i*2
			var yy = y+80
			draw_set_colour(c_green)
			draw_rectangle(xx,yy,xx+1,yy+10,false)
	}
}