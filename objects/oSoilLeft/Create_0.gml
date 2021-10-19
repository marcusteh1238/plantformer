/// @description Insert description here
// You can write your code in this editor
hoverSprite = undefined;
blockingPlantformPlacement = [oPlatformPlant, oPlatformPlantRed, oPlatforms, oPlantformStemBase_1, oPlantformStemBase_2, oPlantformStem_1, oPlantformStem_2];

function canPlaceSeed() {
	var plantformLeftEdge = x - (sprite_width) - 1;
	var plantformRightEdge = x + (sprite_width) + 1;
	var plantformY = y - (sprite_height / 2);
	return !isCollideWithAnything(plantformLeftEdge, plantformRightEdge, plantformY)
}

function isCollideWithAnything(pointX1, pointX2, pointY) {
	blockingPlantformPlacementSize = array_length(blockingPlantformPlacement);
	var list = ds_list_create();
	for (var i = 0; i < blockingPlantformPlacementSize; i++) {
		var count = collision_line_list(pointX1, pointY, pointX2, pointY, blockingPlantformPlacement[i], false, true, list, false);
		if (count > 0) {
			return true;
		}
	}
	return false;
}
