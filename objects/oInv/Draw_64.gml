/// @description Insert description here
// You can write your code in this editor

j = 0

for(var i = 0; i < green; i++){
	instance_create_layer(x + 16 + j * 48, y + 16, "UI2", oSeedGreenMenu);
	j++;
}

for(var i = 0; i < red; i++){
	instance_create_layer(x + 16 + j * 48, y + 16, "UI2", oSeedRedMenu);
	j++;
}

