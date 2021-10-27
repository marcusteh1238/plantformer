/// @description Insert description here
// You can write your code in this editor
if (currHeldIndex < 0) return;
if (currHeldIndex >= ds_list_size(invSeedStrList) - 1) {
	currHeldIndex = 0;
} else {
	currHeldIndex += 1;
}

createBoxHoverAtInvIndex(currHeldIndex)