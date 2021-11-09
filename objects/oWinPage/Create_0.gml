/// @description Insert description here
// You can write your code in this editor
if (global.nowPlaying != "sndSummertimeFunLooping") {
	global.nowPlaying = "sndSummertimeFunLooping"
	audio_stop_all();
	audio_play_sound(sndSummertimeFunLooping, 1, true);
}
global.currRoom = R1_1