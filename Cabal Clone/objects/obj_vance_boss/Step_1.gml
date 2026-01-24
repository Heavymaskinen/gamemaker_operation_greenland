/// @description Shooting delay + speed adjustments
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
	}
	if (dead) {
		hspeed = 0
	}	
	else {
		hspeed = irandom_range(-4,4)
	}
}