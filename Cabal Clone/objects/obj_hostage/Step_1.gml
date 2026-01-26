/// @description Insert description here
// You can write your code in this editor
if (dying && !dead) {
	sprite_index = spr_innocent_die
	dead = true
}
else if (kneeling) {
	sprite_index = sprite_index != spr_innocent_kneel_still ? spr_innocent_kneel : sprite_index
}
else if (saved) {
	sprite_index = spr_innocent_saved
}
else if killed {
	sprite_index = spr_innocent_killed
} else {
	sprite_index = spr_innocent_walk
}