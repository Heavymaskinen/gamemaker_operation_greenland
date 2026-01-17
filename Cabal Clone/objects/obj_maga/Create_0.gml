/// @description Insert description here
// You can write your code in this editor
event_inherited()
die_sounds = [snd_yell_2, snd_yell_3]
global.maga_colors = [make_color_rgb(200, 255, 255),
						  make_color_rgb(255, 200, 255),
						  make_color_rgb(255, 255, 255)]

image_blend = global.maga_colors[irandom(2)];
alarm_set(0, random_range(50,100));