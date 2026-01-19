/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_vance_boss) && !ended {
	ended = true
	for (var i = 0; i< instance_number(obj_russian_window_soldier); i++) {
		var obj = instance_find(obj_russian_window_soldier, i)
		obj.energy = 0
	}

	for (var i = 0; i< instance_number(obj_russian_window_spawn); i++) {
		var obj = instance_find(obj_russian_window_spawn, i)
		obj.dying = true
	}
}