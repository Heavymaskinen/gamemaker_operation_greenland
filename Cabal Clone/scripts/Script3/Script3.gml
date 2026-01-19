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
	//part_type_alpha3(global.Particle1, 0.5, 1, 0);
	part_type_speed(global.Particle1, 3, 10, -0.10, 0.2);
	part_type_direction(global.Particle1, 0, 359, 0, 20);
	//part_type_blend(global.Particle1, true);
	part_type_life(global.Particle1, 10, 35);
}