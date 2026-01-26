control = noone
hit = false
dying = false
scale = 2
target_x = -1
at_target = false
image_speed = 0

function take_hit(damage) {
	hit = true
	control.energy -= damage
}