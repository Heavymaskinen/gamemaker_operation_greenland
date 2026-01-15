function notify_level_change(){
	for (var i = 0; i < instance_number(obj_russian_window_spawn); ++i)
	{
	    instance_find(obj_russian_window_spawn, i).refresh();
	}
}