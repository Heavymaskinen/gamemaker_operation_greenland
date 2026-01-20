/// @description HUD
event_inherited()
var xpos=800
draw_text(xpos,10, "Player: B.S.  -  Score "+string(control.score_count))
for (var i=0;i<control.life_count;i++) {
		draw_set_colour(c_blue)
		draw_circle(xpos+10+i*20,40,10,false)
}

for (var i=0;i<control.energy;i++) {
		var xx = xpos+100+i*3
		draw_set_colour(c_red)
		draw_rectangle(xx,40,xx+1,50,false)
}

for (var i=0;i<control.player_aim.ammo;i++) {
		var xx = xpos+100+i*3
		var yy = 70
		draw_set_colour(c_green)
		draw_rectangle(xx,yy,xx+1,yy+10,false)
}