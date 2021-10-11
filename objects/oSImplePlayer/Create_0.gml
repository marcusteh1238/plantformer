/// @description Insert description here
// You can write your code in this editor
isCreatedAtLevelStart = true;
x_orig = x;
y_orig = y;
walkSpd = 5
jumpSpd = 10
grv = 0.5

isForwardTime = false;

function isTouchingSolidObject(xToCheck, yToCheck) {
	return place_meeting(xToCheck, yToCheck, oPlatforms) or place_meeting(xToCheck, yToCheck, oPlatformPlant) or place_meeting(xToCheck, yToCheck, oPlatformPlantRed) or place_meeting(xToCheck, yToCheck, oWall)
}