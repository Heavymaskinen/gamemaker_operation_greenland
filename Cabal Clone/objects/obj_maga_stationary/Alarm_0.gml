/// @description Insert description here
if (blocked || dying) return

var flame = instance_create_depth(self.x+self.sprite_height*0.3, self.y+self.sprite_height*0.6, 0, obj_maga_flame);
flame.image_xscale = 0.3
flame.image_yscale = 0.3

var bullet = instance_create_depth(self.x+self.sprite_height*0.3, self.y+self.sprite_height*0.6, 0, obj_enemy_bullet);
bullet.direction = 0
bullet.vspeed = 9
bullet.hspeed = irandom_range(-5,5)

rounds--
if (rounds > 0)
	alarm_set(0, irandom_range(10,20))
else
	cool_down = 10