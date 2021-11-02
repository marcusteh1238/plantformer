/// @description Insert description here
// You can write your code in this editor

if (currLen != ds_list_size(invSeedStrList)) {
	refresh()
}

if (ds_list_size(invSeedStrList) > 0  && !global.isCheckControls) {
	var sprite = scrGetSeedSprite(invSeedStrList[|currHeldIndex]);
	draw_set_alpha(0.5);
	draw_sprite(sprite, 0, mouse_x - 10, mouse_y - 10);
	draw_set_alpha(1);
}
