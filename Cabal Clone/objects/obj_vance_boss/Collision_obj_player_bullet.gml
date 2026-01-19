/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
hit = true
energy--
audio_play_sound(snd_light_hit, 2, false, 0.4)
if energy <= 0 && !dead
{
	image_index = 0
	image_speed = 0.6
	
	if (level >= array_length(sprites)) {
		audio_play_sound(snd_argh3, 2, false, 0.4, 0, 0.5)
		dead = true
		hspeed=0
		level = array_length(sprites)-1 
		instance_destroy(self)
	}
	else if (level == 3) 
	{
		if (!dying) {
			audio_play_sound(snd_argh2, 2, false)
			dying = true
			energy = 10
		}
		level++
	}
	else 
	{
		if dying {
			level++
		} else {
			audio_play_sound(snd_yell_3, 2, false, 1, 0, random_range(1,2))
		}

		energy = dying? 10: 20
	}
} else if dead {
	instance_destroy(self)
}
