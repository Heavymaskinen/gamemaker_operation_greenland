/// @description Insert description here

if (blocked || dying) return

var flame = instance_create_depth(self.x+self.sprite_width*0.5, self.y+self.sprite_height*0.5, 0, obj_maga_flame);
flame.image_xscale = 0.3
flame.image_yscale = 0.3

var bullet = instance_create_depth(self.x+self.sprite_width*0.5, self.y+self.sprite_height*0.5, 0, obj_enemy_bullet);
bullet.direction = 0
bullet.vspeed = 5
bullet.hspeed = irandom_range(-5,5)
audio_play_sound(snd_shot, 1, false, 0.4, 0, random_range(1,1.8) )
if dying || blocked return;
alarm_set(0, irandom_range(50,100))