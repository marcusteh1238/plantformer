/// @description Insert description here
// You can write your code in this editor

invSeedStrList = ds_list_create();
currLen = -1;
currHeldIndex = -1;
currHeldInstance = undefined;
guiInstances = ds_list_create();
renderMouseHoverX = 0;
renderMouseHoverY = 0;
seedSpacing = 64;

function refresh() {
	ds_list_clear(guiInstances);
	instance_destroy(oSeedGreenMenu)
	instance_destroy(oSeedRedMenu)
	for(var i = 0; i < ds_list_size(invSeedStrList); i++){
		var seedMenuObj = scrGetSeedMenuObj(invSeedStrList[|i]);
		ds_list_add(guiInstances, createSeedInstanceAtInvIndex(seedMenuObj, i));
	}
	currLen = ds_list_size(invSeedStrList);
	// currHeldInstance = guiInstances[|currHeldIndex];
	createBoxHoverAtInvIndex(currHeldIndex)
}

/**
 * For a particular index of the inventory, render a seed or box at its corresponding spot.
 */
function createSeedInstanceAtInvIndex(obj, index) {
	return instance_create_layer(x + 16 + index * seedSpacing, y + 16, "UI2", obj)
}

function createBoxHoverAtInvIndex(index) {
	instance_destroy(oInvSeedSelector)
	if (index < 0) return;
	return instance_create_layer(x + index * seedSpacing, y, "UI2", oInvSeedSelector)
}