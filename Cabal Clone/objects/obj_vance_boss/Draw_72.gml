/// @description Insert description here
// You can write your code in this editor
if hit
	image_blend = c_red
else
	image_blend = c_white

if level >= array_length(sprites)
	level = array_length(sprites) - 1

sprite_index = sprites[level]