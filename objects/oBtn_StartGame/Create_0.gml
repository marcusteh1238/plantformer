/// @description Insert description here
// You can write your code in this editor
if (global.nowPlaying != "sndMelt") {
	global.nowPlaying = "sndMelt"
	audio_stop_all();
	audio_play_sound(sndMelt, 1, true);
}
