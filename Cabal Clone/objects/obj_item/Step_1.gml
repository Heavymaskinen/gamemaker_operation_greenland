/// @description Apply gravity
if (y <= 0) {
	y = 0
	vspeed = 0
}


if (y+sprite_height >= room_height) {
	y = room_height-sprite_height
	vspeed=0
	gravity = 0
}