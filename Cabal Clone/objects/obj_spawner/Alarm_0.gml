/// @description Start army spawning timer
group_size = min(army_size, group_size)
group_count = group_size
army_size -= group_size

alarm_set(1, 20)
