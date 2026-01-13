/// @description Moving
if shooting
{
	return
}

image_blend = clear_color
var rand = irandom_range(0, 10)
if (rand < 2) {
	alarm_set(0, irandom_range(100,300))
}
else if (rand < 6) 
{
	
	if hspeed != 0
		hspeed = -hspeed
	else
		hspeed = 5
	
	alarm_set(0, irandom_range(100,150))
}
else if (rand < 10) 
{
	hspeed *= 0.7
	alarm_set(0, irandom_range(100,200))
}
else if (rand == 10 && hspeed != 0) 
{
	hspeed = 0
	sprite_index = spr_ice_slip
	dying = true
	return
}


//alarm_set(1, irandom_range(50,100))