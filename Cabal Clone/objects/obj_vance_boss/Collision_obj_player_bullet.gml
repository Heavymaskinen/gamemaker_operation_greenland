/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
hit = true
energy--

if energy <= 0 && !dead
{
	image_index = 0
	image_speed = 0.6
	level++
	if (level >= array_length(sprites)) {
		dead = true
		hspeed=0
		level-- 
	}
	else if (level == 4) 
	{
		if (!dying) {
			dying = true
			energy = 10
		}
	}
	else 
	{
		energy = dying? 10: 20
	}
}
