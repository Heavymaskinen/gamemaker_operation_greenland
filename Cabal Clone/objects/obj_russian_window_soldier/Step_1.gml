/// @description Insert description here
// You can write your code in this editor
if ready && !dying && alarm_get(0) < 0 && instance_exists(obj_vance_boss) {
	var level = obj_vance_boss.level
	var minLimit = level ? 100 : 50
	var maxLimit = level ? 400 : 150
	alarm_set(0, irandom_range(minLimit,maxLimit))
}