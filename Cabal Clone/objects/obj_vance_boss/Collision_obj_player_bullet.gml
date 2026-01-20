/// @description Insert description here

create_spurt(other.x, other.y, 100)
var owner = other.owner.control
instance_destroy(other)

hit = true
energy--

audio_play_sound(snd_light_hit, 2, false, 0.4)
if energy <= 0 && !dead
{
	image_index = 0
	image_speed = 0.6
	
	if (level >= array_length(sprites)) {
		owner.score_count += 5000
		create_spurt(x+sprite_width/2, y+sprite_height/2, 3050)
		audio_play_sound(snd_argh3, 2, false, 0.4, 0, 0.5)
		dead = true
		hspeed=0
		level = array_length(sprites)-1 
		instance_destroy(self)
	}
	else if (level == 3) 
	{
		owner.score_count += 500
		create_spurt(x+sprite_width/2, y+sprite_height/2, 650)
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
			owner.score_count += 500
			audio_play_sound(snd_argh2, 2, false, 1, 0, random_range(1.5,2))
			create_spurt(x+sprite_width/2, y+sprite_height/2, 1700)
			level++
		} else {
			owner.score_count += 200
			create_spurt(x+sprite_width/2, y+sprite_height/2, 900)
			audio_play_sound(snd_yell_3, 2, false, 1, 0, random_range(1,2))
		}

		energy = dying? 10: 30
	}
} else if dead {
	var obj = instance_create_layer(x,y,layer, obj_vance_boss_dead)
	obj.image_xscale = image_xscale
	obj.image_yscale = image_yscale
	instance_destroy(self)
}
