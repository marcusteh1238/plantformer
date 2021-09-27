/// @description Insert description here
// You can write your code in this editor

keyleft = keyboard_check(vk_left)
keyright = keyboard_check(vk_right)
keyjump = keyboard_check(vk_space)

hspeed = (keyright -  keyleft) * walkSpd
vspeed = vspeed + grv

if(hspeed != 0 and (place_meeting(x, y + vspeed, oPlatforms))) {
	isForwardTime = true
}else {
	isForwardTime = false
}

if (place_meeting(x, y + vspeed, oPlatforms) or (place_meeting(x, y + vspeed, oPlatformPlant))) {
	vspeed = 0 - keyjump * jumpSpd	
}

if (place_meeting(x + hspeed, y, oPlatforms) or place_meeting(x + hspeed, y, oPlatformPlant)) {
	hspeed = 0
}
5
//dead, reset
if (place_meeting(x, y + vspeed, oDeathzone)) {
	x = 32
	y = 300
	oPlatformPlant.x = 448
	oPlatformPlant.y = 738
}