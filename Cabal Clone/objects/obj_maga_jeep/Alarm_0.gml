/// @description Insert description here
// You can write your code in this editor
if (dying || blocked) return;

if (x+sprite_width > global.screen_width || x < 0) {
	alarm_set(0, irandom_range(150, 200))
}

sprite_index = spr_enemy_jeep_shoot

var bullet = instance_create_depth(self.x+self.sprite_width*0.08*scale, self.y+self.sprite_height*0.23*scale, 0, obj_enemy_bullet);
bullet.direction = 0
bullet.vspeed = 3
bullet.hspeed = irandom_range(-2,2)
audio_play_sound(snd_machine_gun_3,1,false)
if dying || blocked return;
alarm_set(0, irandom_range(50, 200))