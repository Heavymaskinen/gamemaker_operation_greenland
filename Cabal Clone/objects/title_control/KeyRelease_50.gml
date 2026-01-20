/// @description Insert description here
// You can write your code in this editor
global.player_count = 2
audio_stop_all()
setup_player(1)
setup_player(2)
global.couch_count = 4
setup_particles("particles")
room_goto_next()