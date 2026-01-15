/// @description Insert description here
// You can write your code in this editor
if (shoot_time>0)
{
	shoot_time--
	return
}

if hspeed == 0 {	
	if !dying 
	{
		var rand = irandom_range(0,1)
		hspeed = rand-14-level
	} else {
		hspeed = irandom_range(0,2)
	}
}