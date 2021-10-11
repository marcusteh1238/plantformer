/// @description Insert description here
// You can write your code in this editor

hoverInstance = undefined;

function destroyHoverInstance() {
	if (!is_undefined(hoverInstance)) {
	instance_destroy(hoverInstance);
	hoverInstance = undefined;
}
}