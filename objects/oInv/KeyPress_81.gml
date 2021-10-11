/// @description Insert description here
// You can write your code in this editor
if (holding < 0) return;
if (holding == 0) {
	holding = ds_list_size(list) - 1;
} else {
	holding = holding - 1;
}