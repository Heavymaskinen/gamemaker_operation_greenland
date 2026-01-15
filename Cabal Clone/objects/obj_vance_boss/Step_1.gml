/// @description Insert description here
// You can write your code in this editor
if (shoot_time>0)
{
	shoot_time--
	return
}

if hspeed == 0 {
	var rand = irandom_range(0,1)
	if !dying 
	{
		hspeed = rand-14-level
	} else {
		hspeed = rand-9-level
	}
}