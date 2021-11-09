/// @description Insert description here
// You can write your code in this editor
global.gamePaused = false;
global.isCheckControls = false;
isCreatedAtLevelStart = true;
x_orig = x;
y_orig = y;
walkSpd = 4
jumpSpd = 8
grv = 0.5
gamePausedImageSpeed = image_speed;
isForwardTime = false;

if (global.nowPlaying != "sndMountainSideLooping") {
	global.nowPlaying = "sndMountainSideLooping"
	audio_stop_all();
	audio_play_sound(sndMountainsideLooping, 1, true);
}

function isTouchingSolidObject(xToCheck, yToCheck) {
	return 
		place_meeting(xToCheck, yToCheck, oPlatforms) or 
		place_meeting(xToCheck, yToCheck, oDeadPlantform) or 
		place_meeting(xToCheck, yToCheck, oPlatformPlant) or 
		place_meeting(xToCheck, yToCheck, oPlatformPlantRed) or 
		place_meeting(xToCheck, yToCheck, oWall)
}
