/// @description Shooting
if dying return
if (blocked) 
{
	alarm_set(1, irandom_range(50,150))
	return
}

shooting = true
free_shots--
sprite_index = spr_ice_shoot
hspeed = 0

var bullet = instance_create_depth(x+5*scale, y+13*scale, 1, obj_enemy_bullet)
audio_play_sound(snd_shot_4, 1, false, 0.5, 0.3, random_range(1,1.4))
bullet.vspeed = 10
bullet.hspeed = irandom_range(-3, 3)
if (free_shots>0) 
{
	alarm_set(0, 50)
} else {
	free_shots = 3
	alarm_set(1, irandom_range(50,150))
}