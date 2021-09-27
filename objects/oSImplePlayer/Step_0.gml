/// @description Insert description here
// You can write your code in this editor

keyleft = keyboard_check(vk_left)
keyright = keyboard_check(vk_right)
keyjump = keyboard_check(vk_space)

hspeed = (keyright -  keyleft) * walkSpd
vspeed = vspeed + grv

if (place_meeting(x, y + vspeed, oPlatforms)) {
	vspeed = 0 - keyjump * jumpSpd
}

if (place_meeting(x + hspeed, y, oPlatforms)) {
	hspeed = 0
}

if (place_meeting(x, y + vspeed, oDeathzone)) {
	x = 32
	y = 300
}