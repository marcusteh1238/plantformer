/// @description Insert description here
// You can write your code in this editor

var closeButtonWidth = 352;
var closeButtonHeight = 48;
var controlsSpriteHeight = 640

var closeButtonX = (room_width - closeButtonWidth) / 2;
var popupY = (room_height - controlsSpriteHeight) / 2;
var closeButtonY = popupY + controlsSpriteHeight - closeButtonHeight - 50;

instance_create_layer(closeButtonX, closeButtonY, "Progress", oBtn_Close);
