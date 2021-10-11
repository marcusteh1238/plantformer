/// @description Insert description here
// You can write your code in this editor

keyleft = keyboard_check(vk_left) || keyboard_check(ord("A"))
keyright = keyboard_check(vk_right) || keyboard_check(ord("D"))
keyjump = keyboard_check(vk_space)

hspeed = (keyright -  keyleft) * walkSpd
vspeed = vspeed + grv

if (isTouchingSolidObject(x, y + vspeed)) {
	vspeed = 0 - keyjump * jumpSpd 
	if (isTouchingSolidObject(x, y - 50)) {
		vspeed = 0;
	}
}

if (isTouchingSolidObject(x + hspeed, y)) {
	hspeed = 0
}

isForwardTime = false;
// check if going forward in time (plant grows)
if(hspeed != 0) {
	// if an oPlatform is directly below, then set isForwardTime to true
	var collisionListLeft = ds_list_create();
	var collisionListRight = ds_list_create();
	var bottomLeftX = x - (sprite_width / 2)
	collision_line_list(bottomLeftX, y, bottomLeftX, room_height, all, false, true, collisionListLeft, true);
	var firstCollisionIdLeft = collisionListLeft[|0]
	isLeftCollide = false;
	with(firstCollisionIdLeft) {
		other.isLeftCollide = object_index == oPlatforms.object_index;
	}
	var bottomRightX = bottomLeftX + sprite_width;
	collision_line_list(bottomRightX, y, bottomRightX, room_height, all, false, true, collisionListRight, true);
	var firstCollisionIdRight = collisionListRight[|0]
	isRightCollide = false;
	with(firstCollisionIdRight) {
		other.isRightCollide = object_index == oPlatforms.object_index;
	}
	if (isLeftCollide && isRightCollide) {
		isForwardTime = true;
	}
}

//dead, reset
/*
if (place_meeting(x, y + vspeed, oDeathzone)) {
	with (all) {
		if (variable_instance_exists(self, "isCreatedAtLevelStart") and isCreatedAtLevelStart) {
			x = x_orig
			y = y_orig
		}
	}
}
*/