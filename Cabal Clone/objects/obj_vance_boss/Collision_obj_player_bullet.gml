/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
hit = true
energy--

if energy <= 0 && !dead
{
	image_index = 0
	image_speed = 0.6
	
	if (level >= array_length(sprites)) {
		dead = true
		hspeed=0
		level = array_length(sprites)-1 
		instance_destroy(self)
	}
	else if (level == 3) 
	{
		if (!dying) {
			dying = true
			energy = 10
		}
		level++
	}
	else 
	{
		if dying level++

		energy = dying? 10: 20
	}
} else if dead {
	instance_destroy(self)
}
