/// @description HUD

draw_text(10,10, "Player: Pingo  -  Score "+string(obj_player_control.score_count))
for (var i=0;i<obj_player_control.life_count;i++) {
		draw_set_colour(c_green)
		draw_circle(10+i*20,40,10,false)
}

for (var i=0;i<obj_player_control.energy;i++) {
		var xx = 100+i*3
		draw_set_colour(c_red)
		draw_rectangle(xx,40,xx+1,50,false)
}

for (var i=0;i<obj_player_control.player_aim.ammo;i++) {
		var xx = 100+i*3
		var yy = 70
		draw_set_colour(c_green)
		draw_rectangle(xx,yy,xx+1,yy+10,false)
}

//draw_text(10, 300, "Enemies: "+string(instance_number(obj_enemy)))