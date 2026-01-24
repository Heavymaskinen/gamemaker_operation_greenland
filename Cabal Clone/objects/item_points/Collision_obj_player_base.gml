/// @description Give points
audio_play_sound(snd_bleep,1,false,1,0,1.8)
other.control.score_count += points
instance_destroy(self)