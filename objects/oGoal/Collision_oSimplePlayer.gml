/// @description Insert description here
// You can write your code in this editor()

if (global.currRoom == R4_4) {
	room_goto(WinPage)
} else if (finish) {
	room_goto(HomePage)
} else {
	var nextRoom = room_next(room)
	if ( nextRoom != -1) {
		global.currRoom = nextRoom
	}
	room_goto_next()
}
