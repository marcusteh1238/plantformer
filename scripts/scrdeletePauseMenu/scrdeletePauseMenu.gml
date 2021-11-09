// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrdeletePauseMenu(){
	instance_destroy(oPause);
	instance_destroy(oBtn_Resume);
	instance_destroy(oBtn_Restart);
	instance_destroy(oBtn_Controls);
	instance_destroy(oBtn_MainMenu);
	instance_destroy(oBtn_Exit);
	instance_destroy(oPausePopUp);
}