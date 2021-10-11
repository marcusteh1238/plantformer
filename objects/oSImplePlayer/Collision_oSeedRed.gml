/// @description Insert description here
// You can write your code in this editor

instance_destroy(other)
var inv = instance_find(oInv, 0);
with (inv) {
	ds_list_add(invSeedStrList, "red");
	if (currHeldIndex < 0) {
		currHeldIndex = 0;
	}
}