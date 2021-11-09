// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrCreatePauseMenu(){
	var startX =  (room_width - 1184) / 2;
	var startY =  (room_height - 640) / 2;
	instance_create_layer(startX, startY, "Level", oPause);
}