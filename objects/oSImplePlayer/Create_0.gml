/// @description Insert description here
// You can write your code in this editor
global.isCheckControls = false;
isCreatedAtLevelStart = true;
x_orig = x;
y_orig = y;
walkSpd = 4
jumpSpd = 8
grv = 0.5

isForwardTime = false;

function isTouchingSolidObject(xToCheck, yToCheck) {
	return 
		place_meeting(xToCheck, yToCheck, oPlatforms) or 
		place_meeting(xToCheck, yToCheck, oDeadPlantform) or 
		place_meeting(xToCheck, yToCheck, oPlatformPlant) or 
		place_meeting(xToCheck, yToCheck, oPlatformPlantRed) or 
		place_meeting(xToCheck, yToCheck, oWall)
}