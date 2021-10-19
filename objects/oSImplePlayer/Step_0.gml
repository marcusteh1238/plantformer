/// @description Insert description here
// You can write your code in this editor

keyleft = keyboard_check(vk_left) || keyboard_check(ord("A"))
keyright = keyboard_check(vk_right) || keyboard_check(ord("D"))
keyjump = keyboard_check(vk_space)

hspeed = (keyright -  keyleft) * walkSpd
vspeed = vspeed + grv

if(keyboard_check(ord("R"))) {
	room_restart()
}

if(y > room_height) {
	room_restart()
}

if (isTouchingSolidObject(x, y + vspeed)) {
	vspeed = 0 - keyjump * jumpSpd 
	if (isTouchingSolidObject(x, y - 50)) {
		vspeed = 0;
	}
}

if (isTouchingSolidObject(x + hspeed, y)) {
	hspeed = 0
}


function isCollide(collisionList) {
	var size = ds_list_size(collisionList);
	colliding = undefined;
	for (var i = 0; i < size; i++) {
		collisionId = collisionList[|i];
		if (is_undefined(collisionId)) {
			break;
		}
		with (collisionId) {
			if (object_index == oPlatforms.object_index) {
				other.colliding = true;
			} else if (
				!((instance_exists(oSeedRed) && object_index == oSeedRed.object_index) || 
				(instance_exists(oSeedGreen) && object_index == oSeedGreen.object_index))
			) {
				other.colliding = false;
			}
		}
		if (!is_undefined(colliding)) {
			break;
		}
	}
	return colliding;
}

isForwardTime = false;
// check if going forward in time (plant grows)
if(hspeed != 0) {
	// if an oPlatform is directly below, then set isForwardTime to true
	var collisionListLeft = ds_list_create();
	var collisionListRight = ds_list_create();
	var isLeftCollide = false;
	var isRightCollide = false;
	
	var bottomLeftX = x - (sprite_width / 2) + 2
	collision_line_list(bottomLeftX, y, bottomLeftX, room_height, all, false, true, collisionListLeft, true);
	isLeftCollide = isCollide(collisionListLeft);
	var bottomRightX = x + (sprite_width / 2) - 2;
	collision_line_list(bottomRightX, y, bottomRightX, room_height, all, false, true, collisionListRight, true);
	isRightCollide = isCollide(collisionListRight);
	
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