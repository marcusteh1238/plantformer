// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrUnpause() {
	global.gamePaused = !global.gamePaused;
	if (global.gamePaused) {
	} else {
		scrdeletePauseMenu()
		instance_activate_all()
	}
}