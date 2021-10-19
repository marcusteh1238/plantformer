/// @description Insert description here
// You can write your code in this editor

// when mouse enter, we render a hover preview
var inv = instance_find(oInv, 0);
if (inv.currHeldIndex < 0) {
	return;
}

if (canPlaceSeed()) {
	hoverSprite = inv.invSeedStrList[|inv.currHeldIndex];
}
