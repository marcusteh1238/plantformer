/// @description Insert description here
// You can write your code in this editor

//  refresh hover sprite whenever user scrolls through inv
if (!isHovered) return;
if (keyboard_check(ord("Q")) || 
	keyboard_check(ord("E")) ||
	mouse_wheel_up() ||
	mouse_wheel_down()
) {
	refreshHoverSprite()
}

