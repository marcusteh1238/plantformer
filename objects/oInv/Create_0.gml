/// @description Insert description here
// You can write your code in this editor

invSeedStrList = ds_list_create();
currLen = -1;
currHeldIndex = -1;
currHeldInstance = undefined;
guiInstances = ds_list_create();

function refresh() {
	ds_list_clear(guiInstances);
	instance_destroy(oSeedGreenMenu)
	instance_destroy(oSeedRedMenu)
	for(var i = 0; i < ds_list_size(invSeedStrList); i++){
		var seedMenuObj = scrGetSeedMenuObj(invSeedStrList[|i])
		ds_list_add(guiInstances, instance_create_layer(x + 16 + i * 48, y + 16, "UI2", seedMenuObj))
	}
	currLen = ds_list_size(invSeedStrList)
	currHeldInstance = guiInstances[|currHeldIndex]
}
