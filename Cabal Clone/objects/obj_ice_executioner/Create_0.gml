/// @description Insert description here
// You can write your code in this editor
event_inherited()
walking = true
shooting = false
transform = false
dying = false
dead = false
shots = 3
hostage = instance_create_layer(x-120, y, layer, obj_hostage)
hostage.image_xscale = image_xscale
hostage.image_yscale = image_yscale
hspeed = -2
alarm_set(0, 400)