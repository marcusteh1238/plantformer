/// @description Insert description here
// You can write your code in this editor()

if (finish) {
	room_goto(HomePage)
} else if (global.currRoom == R4_5) {
	room_goto(WinPage)
} else {
	var nextRoom = room_next(room)
	if ( nextRoom != -1) {
		global.currRoom = nextRoom
	}
	room_goto_next()
}
