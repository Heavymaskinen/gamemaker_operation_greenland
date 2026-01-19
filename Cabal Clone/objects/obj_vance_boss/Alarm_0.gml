/// @description Insert description here
// You can write your code in this editor
hit = false
hspeed = 0

shoot_time = dying? 150 : 30
var skew = dying ? level*3 : 0
if (flip) {
	for (var i=0;i<3;i++) {
		var bullet = create_bullet()
		bullet.direction = point_direction(x,y, x-50+i*150+skew, y+200)
		bullet.speed = 3
	}
			
} else {
	for (var i=0;i<2;i++) {
		var bullet = create_bullet()
		bullet.direction = point_direction(x,y, x-25+i*150+skew, y+200)
		bullet.speed = 3	
	}
}
flip = !flip
audio_play_sound(snd_zap_shot, 1, false, 0.4)

function create_bullet() {
	var bullet = instance_create_depth(x+sprite_width*0.8, y+sprite_height/2,0, obj_enemy_bullet)
	bullet.image_blend = c_green
	bullet.image_xscale = 0.3
	bullet.image_yscale = 0.3
	return bullet
}