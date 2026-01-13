/// @description Insert description here
// You can write your code in this editor
dying = false;
blocked = false
scale = 1.0;
other_depth = -1

var orig_y = y

if (y < 380) scale = 0.5
else if (y < 415) scale = 1.0
if (y > 470) scale = 1.8
if (y > 480) scale = 2
if (y > 550) scale = 3

//200 - 300

var new_y = y*scale
var diff = orig_y - new_y
y = new_y + diff

image_xscale = scale
image_yscale = scale
spawner = pointer_null