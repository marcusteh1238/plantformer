/// @description Insert description here
// You can write your code in this 

if (oSimplePlayer.isForwardTime) {
	hspeed = cloudSpeed
	distAway = 8 * 32;
	if (x >= room_width + distAway) {
		x = -distAway
	}
} else {
	hspeed = 0;
}
