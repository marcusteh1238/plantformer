/// @description Insert description here
// You can write your code in this editor

keyleft = keyboard_check(vk_left) || keyboard_check(ord("A"))
keyright = keyboard_check(vk_right) || keyboard_check(ord("D"))
keyjump = keyboard_check(vk_space)

hspeed = (keyright -  keyleft) * walkSpd
vspeed = vspeed + grv

if (place_meeting(x, y + vspeed, oPlatforms) or place_meeting(x, y + vspeed, oPlatformPlant) or place_meeting(x, y + vspeed, oWall)) {
	vspeed = 0 - keyjump * jumpSpd
}

if (place_meeting(x + hspeed, y, oPlatforms) or place_meeting(x + hspeed, y, oPlatformPlant)  or place_meeting(x + hspeed, y, oWall)) {
	hspeed = 0
}

isForwardTime = false;
// check if going forward in time (plant grows)
if(hspeed != 0) {
	// if an oPlatform is directly below, then set isForwardTime to true
	var collisionList = ds_list_create()
	var str = "";
	collision_line_list(x, y, x, room_height, all, false, true, collisionList, true);
	var firstCollisionId = collisionList[|0]
	with(firstCollisionId) {
		other.isForwardTime = object_index == oPlatforms.object_index;
	}
	// show_debug_message("isForwardTime: " + string(isForwardTime))
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