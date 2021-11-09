/// @description Insert description here
// You can write your code in this editor
pauseOptions = [
	["Resume", oBtn_Resume],
	["Restart", oBtn_Restart],
	["Controls", oBtn_Controls],
	["Main Menu", oBtn_MainMenu],
	["Exit", oBtn_Exit]
];

pauseSpacing = 79;
xStart = (room_width - 352) / 2
yStart = 243

instance_create_layer(xStart, (0 * pauseSpacing) + yStart, "Progress", oBtn_Resume);
instance_create_layer(xStart, (1 * pauseSpacing) + yStart, "Progress", oBtn_Restart);
instance_create_layer(xStart, (2 * pauseSpacing) + yStart, "Progress", oBtn_Controls);
instance_create_layer(xStart, (3 * pauseSpacing) + yStart, "Progress", oBtn_MainMenu);
instance_create_layer(xStart, (4 * pauseSpacing) + yStart, "Progress", oBtn_Exit);
