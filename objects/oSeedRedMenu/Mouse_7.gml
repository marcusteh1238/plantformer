/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, oSoil) {
	instance_create_layer(x, oSoil.y + 32, "Level", oPlatformPlantRed)
	oInv.red -= 1
}

instance_destroy(oSeedRedMenu)

