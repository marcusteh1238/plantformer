/// @description Insert description here
// You can write your code in this editor

stemX = x - 32;
initialStemY = y - (32 * 2);
stemY = initialStemY;

stemObjArr = ds_list_create();
// create the base object
var stemBase = instance_create_layer(stemX, stemY, "Level", oPlantformStemBase_1);
ds_list_add(stemObjArr, stemBase);
