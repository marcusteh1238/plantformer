/// @description Insert description here
// You can write your code in this editor

var inv = instance_find(oInv, 0);
if (inv.currHeldIndex < 0 || !canPlaceSeed()) {
	return;
}

// holding >= 0, player is holding a seed.
var seed = inv.invSeedStrList[|inv.currHeldIndex];
// plant seed
var inst = instance_create_layer(x - 64, y + 64, "Level", scrGetSeedPlantformObj(seed));
with inst {
	isGrowLeft = true
}
// destroy instance of menu seed in GUI
ds_list_delete(inv.invSeedStrList, inv.currHeldIndex);
instance_destroy(inv.guiInstances[|inv.currHeldIndex]);
hoverSprite = undefined;
// change current held index if needed
var listSize = ds_list_size(inv.invSeedStrList)
if (inv.currHeldIndex >= listSize) {
	inv.currHeldIndex = listSize - 1;
}
