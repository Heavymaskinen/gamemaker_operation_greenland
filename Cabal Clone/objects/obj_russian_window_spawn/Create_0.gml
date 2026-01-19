/// @description Insert description here
// You can write your code in this editor
active_spawn = noone
triggered = false
dying = false
dead = false

function refresh() {
	if active_spawn == noone && !dying
		alarm_set(0, irandom_range(150,300))
}