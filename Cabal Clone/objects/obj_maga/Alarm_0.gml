/// @description Insert description here
// You can write your code in this editor
if (dying || blocked) return;

hspeed = 0
var flame = instance_create_depth(self.x+self.sprite_height*0.2, self.y+self.sprite_height*0.47, depth-1, obj_maga_flame);
flame.image_xscale = 0.3
flame.image_yscale = 0.3

var bullet = instance_create_depth(self.x+self.sprite_height/4, self.y+self.sprite_height*0.47, 0, obj_enemy_bullet);
bullet.direction = 0
bullet.vspeed = 3
bullet.hspeed = irandom_range(-15,15)
audio_play_sound(snd_shot, 1, false, 0.2, 0, random_range(1,1.8) )
if dying || blocked return;
alarm_set(0, irandom_range(50, 300))

hspeed = random_range(-6,6)