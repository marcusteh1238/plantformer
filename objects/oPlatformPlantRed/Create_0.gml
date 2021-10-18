/// @description Insert description here
// You can write your code in this editor

stemX = x - 32;
initialStemY = y - (32 * 2);
stemY = initialStemY;

stemObjArr = ds_list_create();
// create the base object
var stemBase = instance_create_layer(stemX, stemY, "Level", oPlantformStemBase_1);
ds_list_add(stemObjArr, stemBase);

function getStemObject(totalStemCount) {
	if (totalStemCount <= 0) {
		return oPlantformStemBase_1;
	}
	if (totalStemCount == 1) {
		return oPlantformStemBase_2;
	}
	if (totalStemCount % 2 == 0) {
		return oPlantformStem_1;
	}
	return oPlantformStem_2;
}

function isTouchingSolidObject(xToCheck, yToCheck) {
	return 
	place_meeting(xToCheck, yToCheck, oPlatforms) || 
	place_meeting(xToCheck, yToCheck, oPlatformPlant) || 
	place_meeting(xToCheck, yToCheck, oPlatformPlantRed) || 
	place_meeting(xToCheck, yToCheck, oWall)
}