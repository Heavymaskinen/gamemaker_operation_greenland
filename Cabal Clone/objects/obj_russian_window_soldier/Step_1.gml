/// @description Insert description here
// You can write your code in this editor
if ready && alarm_get(0) < 0
	alarm_set(0, irandom_range(50,200))