/// @description Insert description here
// You can write your code in this editor

var xDiff = isGrowRight * growth_y_per_step - isGrowLeft * growth_y_per_step
if (oSimplePlayer.isForwardTime && !isTouchingSolidObject(x + xDiff, y - growth_y_per_step)) {
	y -= growth_y_per_step;
	x += xDiff;
}


if (y - 32 <= stemY || ds_list_size(stemObjArr) == 0) {
	renderNext()
}



/*
if (x + 32 >= stemX) {
	stemX = nextStemX;
	var stemInstance = instance_create_layer(stemX, stemY, "Level", getStemObject(listSize));
	ds_list_add(stemObjArr, stemInstance);
}
*/