/// @description Insert description here
// You can write your code in this editor
active_spawn = noone
triggered = false


function refresh() {
	if active_spawn == noone
		alarm_set(0, irandom_range(150,200))
}