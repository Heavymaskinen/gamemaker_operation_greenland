image_speed = 0
//image_index = 0
hit = false


if (dying) {	
	if (control.life_count >0 ) {
		control.energy = 50
		control.life_count--
		dying = false
	} else {
		instance_destroy(self)
	}
}