/// @description Insert description here
// You can write your code in this editor

var inv = instance_find(oInv, 0);
if (inv.currHeldIndex < 0) {
	return;
}

// holding >= 0, player is holding a seed.
var seed = inv.invSeedStrList[|inv.currHeldIndex];
// plant seed
if (seed == "green") {
	instance_create_layer(x, oSoil.y + 32, "Level", oPlatformPlant);
} else if (seed == "red") {
	instance_create_layer(x, oSoil.y + 32, "Level", oPlatformPlantRed);
}
// destroy instance of menu seed in GUI
ds_list_delete(inv.invSeedStrList, inv.currHeldIndex);
instance_destroy(inv.guiInstances[|inv.currHeldIndex])

// change current held index if needed
var listSize = ds_list_size(inv.invSeedStrList)
if (inv.currHeldIndex >= listSize) {
	inv.currHeldIndex = listSize - 1;
}
