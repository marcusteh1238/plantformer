/// @description Insert description here
// You can write your code in this editor
var kPause = keyboard_check_released(vk_escape);
if (kPause) {
	instance_destroy(instance_find(oBtn_Close, 0))
	instance_destroy(self)
	scrCreatePauseMenu()
}
