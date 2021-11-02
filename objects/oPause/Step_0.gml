///     		Set Variables     ///
////////////////////////////////////////////////////////////////////////////

///		Place inputs here		///
var kPause		= keyboard_check_pressed( vk_escape );
var kDown		= (mouse_wheel_down() || keyboard_check_pressed( vk_down ) ||  keyboard_check_pressed( ord("S") )  );
var kUp			= (mouse_wheel_up() || keyboard_check_pressed( vk_up ) || keyboard_check_pressed( ord("W") ) );
var kConfirm	= (mouse_check_button_pressed( mb_left ) || keyboard_check_pressed( vk_enter) );


screen_alpha	= scrApproach( screen_alpha, screen_alpha_set, .1 );

////////////////////////////////////////////////////////////////////////////


///     		Controls      ///
////////////////////////////////////////////////////////////////////////////

// Open PauseMenu when you minimize the window 
/*
if ( !window_has_focus() ){
	window = true;
} else {
	window = false;
}

if ( window != windowPrev ){
	if ( !window ){
		kPause = true;
	}
	windowPrev = window;
}
*/


///		Trigger PauseMenu	///
if ( kPause ){
	if ( pause ){
		alarm[0]	= 2; //Resume
		pause = false;
	} else {
		alarm[1]	= 2; //Pause
		pause = true;
	}
}

////////////////////////////////////////////////////////////////////////////
///     		Buttons		     ///
////////////////////////////////////////////////////////////////////////////

if ( pause ){
	///		Button Pos		///
	for( var i = 0; i< bc; i++; ){
		var x_set		= cx;
		var y_set		= cy- (bgap* ( b- i )); //align the vertical offset of the buttons
		var xoff_set	= 0;
		var yoff_set	= 0;
		var sca_set		= 1;
		var alpha_set	= 1;
		var col_set		= c_white;
		var diff		= abs( b-i );

		///		Hovered Button		///
		if ( b == i ){ 
		//x_set		= cx+ bxoff[i]; 
		sca_set		= 2.5;		 // scale
		alpha_set	= 1;		// alpha
		col_set		= c_white; //color
		xoff_set	= 15;	  // offset to the right

		///		Other Buttons	///
		} else {		
		//x_set		= cx;
		sca_set		= 2- (0.2* diff);
		alpha_set	= 1- (0.2* diff);
		col_set		= c_gray;
		xoff_set	= 0;
		}
		///		Set Temp variables into the specified button array		///
		bx[ i ]		= x_set+ bxoff[ i ];
		by[ i ]		= lerp( by[i], y_set, 0.2 );
		bsca[ i ]	= lerp( bsca[i], sca_set, .2 );
		balpha[ i ]	= lerp( balpha[i], alpha_set, .2 );
		bcol[ i ]	= col_set;
		
		bxoff[ i ]	= lerp( bxoff[ i ], xoff_set, .2 );
		byoff[ i ]  = yoff_set;
		
	}

	
	
	///		Scroll through buttons		///
	if ( kDown ){
		b  = scrApproach( b, bc- 1, 1 );
		// audio_play_sound( sound[0], 0, 0 );
	} else if ( kUp ){
		b	= scrApproach( b, 0, 1 );
		// audio_play_sound( sound[0], 0, 0 );
	}
	
	
	///		Select Button	///
	if ( kConfirm ){
		if ( pause ){
			// audio_play_sound( sound[1], 0, 0 );
		switch( b ){
			case 0: // Resume
				alarm[0]	= room_speed* 0.1; //resume timer 
				screen_alpha_set	= 0; 
			break;
			case 1: // Restart
				room_restart();

			break;
			case 2: // Controls
				pause = false;
				instance_activate_all();
				screen_alpha_set = 0;
				var controlsSpriteWidth = 1184
				var controlsSpriteHeight = 640
				var popupX = (room_width - controlsSpriteWidth) / 2;
				var popupY = (room_height - controlsSpriteHeight) / 2;
				instance_create_layer(popupX, popupY, "UI", oPausePopUp);
				break;
			case 3: // MainMenus
				pause = false;
				instance_activate_all();
				screen_alpha_set = 0;
				room_goto(HomePage);
			break;
			case 4: // Exit
				game_end();
			break;
		}
		}
		} //end Confirm statement
} 

////////////////////////////////////////////////////////////////////////////



/* */
/*  */
