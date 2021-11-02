// You can write your code in this editor
// Easing functions source: http://sol.gfxile.net/interpolation/
// If you liked this asset, please give it a rating. Thank you! 

/////////////////////////////////////////////////////////
//	-	 Make sure to set your game to 60 fps		 //
//- Turn off interpolation between pixels //
///////////////////////////////////////////////////////
///       General	      ///
/////////////////////////////////////////////////////////////////

// **Just incase you're too lazy to change the settings** //
//room_speed = 60;
//texture_set_interpolation(false);
///////////////////////////////////////////////////////////


//font	= font_add_sprite( sfont_jasontomlee, ord(" "), 1, 1);
//draw_set_font( font );

pause		= false;
gwidth		= display_get_gui_width();
gheight		= display_get_gui_height();
cx			= gwidth/2;
cy			= gheight/2;
screen_alpha		= 0;
screen_alpha_set	= 0;

// Insert your sounds here
//sound[0] = //Scroll through buttons
//sound[1] = //Confirm 

// Check if your Window is open/closed
window		= true;
windowPrev	= true;

/////////////////////////////////////////////////////////////////
///      Buttons           ///
/////////////////////////////////////////////////////////////////

b		= 0; //selected
bc		= 0;
bgap	= 40; //vertical spacing between buttons


bstring[ 0 ]	= " RESUME ";
bstring[ 1 ]	= " RESTART ";
bstring[ 2 ]	= " CONTROLS ";
bstring[ 3 ]	= " MAINMENU ";
bstring[ 4 ]	= " EXIT ";
bc	   = 5; //total button count;


//Initialize Button values
for( var i = 0; i< bc; i++; ) {
	bx[ i ]		= 0;
	by[ i ]		= 0;
	bsca[ i ]	= 1;
	bcol[ i ]	= c_white;
	balpha[ i ]	= 1;
	bspd[ i ]	= 0;
	bxoff[ i ]	= 0;
	byoff[ i ]	= 0;
	byspd[ i ]	= 0;
}

/////////////////////////////////////////////////////////////////



