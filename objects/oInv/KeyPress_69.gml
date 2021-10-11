/// @description Insert description here
// You can write your code in this editor
if (holding < 0) return;
if (holding >= ds_list_size(list) - 1) {
	holding = 0;
} else {
	holding = holding + 1;
}