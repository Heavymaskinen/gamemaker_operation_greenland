/// @description Insert description here
// You can write your code in this editor
if shooting {
	audio_play_sound(shot_sounds[shot_sound_count],1, false,0.1,0, random_range(1,2))
	shot_sound_count = (shot_sound_count + 1)% array_length(shot_sounds)
}