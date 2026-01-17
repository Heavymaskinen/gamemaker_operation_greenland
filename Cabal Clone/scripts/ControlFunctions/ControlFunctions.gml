// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function intro(text){
	obj_putin.visible = false
	obj_vance.visible = false
	draw_set_colour(c_gray)
	draw_text_transformed(room_width/3-string_length(text)*2, room_height/2, text, 2,2,0 )
}

function vance_talk(mode, text){
	stop_putin()
	obj_putin.visible = true
	obj_vance.visible = true
	obj_vance.mode = mode
	obj_vance.talking = true
	draw_set_colour(c_black)
	draw_rectangle(obj_vance.x+300, obj_vance.y, obj_vance.x+600, obj_vance.y+100, false)
	draw_set_colour(c_gray)
	draw_text_transformed(obj_vance.x+300, obj_vance.y, text,2,2,0 )
}

function stop_vance() {
	obj_vance.talking = false
	draw_set_colour(c_black)
	draw_rectangle(obj_vance.x+300, obj_vance.y, obj_vance.x+600, obj_vance.y+100, false)
}

function putin_talk(mode, text){
	obj_putin.visible = true
	obj_vance.visible = true
	stop_vance()
	obj_putin.mode = mode
	obj_putin.talking = true
	draw_set_colour(c_red)
	draw_text_transformed(100, obj_putin.y, text,2,2,0)
}

function stop_putin() {
	obj_vance.talking = false
	draw_set_colour(c_black)
	draw_rectangle(obj_vance.x+300, obj_vance.y, obj_vance.x+600, obj_vance.y+100, false)
}

function sleep(counter) {
	obj_spacebase_Director.delay_count = counter
}