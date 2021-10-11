/// @description Insert description here
// You can write your code in this editor

var inv = instance_find(oInv, 0);
ds_list_add(inv.list, storedMenuSeed);
if (inv.holding < 0) {
	inv.holding = 0;
}
instance_destroy(self);
