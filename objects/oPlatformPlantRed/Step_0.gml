/// @description Insert description here
// You can write your code in this editor

if (oSimplePlayer.isForwardTime  && !isTouchingSolidObject(x, y - growth_y_per_step)) {
	y -= growth_y_per_step;
}


var listSize = ds_list_size(stemObjArr);
var nextStemY = initialStemY - (listSize * 32);
if (y - 32 <= stemY) {
	stemY = nextStemY;
	var stemInstance = instance_create_layer(stemX, stemY, "Level", getStemObject(listSize));
	ds_list_add(stemObjArr, stemInstance);
}

