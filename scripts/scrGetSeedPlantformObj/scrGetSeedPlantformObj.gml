// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGetSeedPlantformObj(seedStr){
	if (seedStr == "green") {
		return oPlatformPlant;
	}
	if (seedStr == "red") {
		return oPlatformPlantRed;
	}
}