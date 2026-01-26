/// @description Insert description here
// You can write your code in this editor
if (dying) {
	if (hostage != noone && instance_exists(hostage))
		hostage.saved = true
		
	instance_destroy(self)
} else if shooting {
	if (hostage != noone && instance_exists(hostage)) 
		hostage.dying = true

	hostage = noone
	shots--
	if shots <= 0 {
		transform = true
		shooting = false
	} else {
		image_index = 0
	}
}
else if (transform && spr_ice_excecutioner_transform) {
	var obj = instance_create_layer(x,y,layer, obj_ice)
	obj.image_xscale = image_xscale
	obj.image_yscale = image_yscale
	instance_destroy(self)
}