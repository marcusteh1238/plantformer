// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGetSeedPlantformHoverObj(seedStr){
	if (seedStr == "green") {
		return oPlatformPlantHover;
	}
	if (seedStr == "red") {
		return oPlatformPlantRedHover;
	}
}