/// @description Insert description here
// You can write your code in this editor
var kPause = keyboard_check_released(vk_escape);
if (kPause) {
	global.gamePaused = !global.gamePaused;
	if (global.gamePaused) {
		global.pauseBack = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,0,0,0);
		instance_deactivate_all(false);
		scrCreatePauseMenu()
	} else {
		instance_destroy(oPause)
		instance_activate_all()
	}
}
