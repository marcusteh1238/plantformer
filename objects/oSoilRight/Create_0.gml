/// @description Insert description here
// You can write your code in this editor
hoverSprite = undefined;
blockingPlantformPlacement = [oPlatformPlant, oPlatformPlantRed, oPlatforms, oPlantformStemBase_1, oPlantformStemBase_2, oPlantformStem_1, oPlantformStem_2, oSimplePlayer, oPlantformStem_Diagonal_1_L, oPlantformStem_Diagonal_1_R, oPlantformStem_Diagonal_2_L, oPlantformStem_Diagonal_2_R];
isHovered = false;

function canPlaceSeed() {
	var plantformRightEdge = x - (sprite_width) - 1;
	var plantformLeftEdge = x - (sprite_width * 3) + 1;
	var plantformY1 = y + 1;
	var plantformY2 = y + sprite_height;
	return !isCollideWithAnything(plantformLeftEdge, plantformRightEdge, plantformY1) &&
		!isCollideWithAnything(plantformLeftEdge, plantformRightEdge, plantformY2)
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

function refreshHoverSprite() {
	var inv = instance_find(oInv, 0);
	if (canPlaceSeed()) {
		hoverSprite = inv.invSeedStrList[|inv.currHeldIndex];
	} else {
		hoverSprite = undefined;
	}
}