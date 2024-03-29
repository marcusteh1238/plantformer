/// @description Insert description here
// You can write your code in this editor
initialStemX = x - 32;
initialStemY = y - (32 * 2);
stemX = initialStemX;
stemY = initialStemY;

stemObjArr = ds_list_create();

function getStemObject(totalStemCount) {
	if (totalStemCount <= 0) {
		if (isGrowLeft) {
			return oPlantformStemBase_Diagonal_L
		}
		if (isGrowRight) {
			return oPlantformStemBase_Diagonal_R
		}
		return oPlantformStemBase_1;
	}
	if (totalStemCount == 1) {
		if (isGrowLeft) {
			return oPlantformStem_Diagonal_1_L
		}
		if (isGrowRight) {
			return oPlantformStem_Diagonal_1_R
		}
		return oPlantformStemBase_2;
	}
	if (totalStemCount % 2 == 0) {
		
		if (isGrowLeft) {
			return oPlantformStem_Diagonal_2_L
		}
		if (isGrowRight) {
			return oPlantformStem_Diagonal_2_R
		}
		return oPlantformStem_1;
	}
	
	if (isGrowLeft) {
		return oPlantformStem_Diagonal_1_L
	}
	if (isGrowRight) {
		return oPlantformStem_Diagonal_1_R
	}
	return oPlantformStem_2;
}

function renderNext() {
	var listSize = ds_list_size(stemObjArr);
	stemY = initialStemY - (listSize * 32);
	//var nextStemX = initialStemX - (listSize * 32);
	//show_debug_message("stemX: " + string(stemX))
	stemX = initialStemX;
	if (isGrowRight) {
		stemX = initialStemX + ((listSize + 2) * 32) - 128;
	}
	if (isGrowLeft) {
		stemX = initialStemX - (listSize * 32);
	}
	var stemInstance = instance_create_layer(stemX, stemY, "Level", getStemObject(listSize));
	if (isGrowRight) {
		with (stemInstance) {
			isGrowRight = true;
		}
	}
	ds_list_add(stemObjArr, stemInstance);
}

function isTouchingSolidObject(xToCheck, yToCheck) {
	return 
	place_meeting(xToCheck, yToCheck, oPlatforms) || 
	place_meeting(xToCheck, yToCheck, oPlatformPlant) || 
	place_meeting(xToCheck, yToCheck, oPlatformPlantRed) || 
	place_meeting(xToCheck, yToCheck, oDeadPlantform) || 
	place_meeting(xToCheck, yToCheck, oWall) ||
	place_meeting(xToCheck, yToCheck, oSoilRight) ||
	place_meeting(xToCheck, yToCheck, oSoilLeft)
}


// create the base object
//var stemBase = instance_create_layer(stemX, stemY, "Level", getStemObject(0));
//ds_list_add(stemObjArr, stemBase);