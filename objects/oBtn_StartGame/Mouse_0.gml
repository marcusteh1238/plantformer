/// @description Insert description here
// You can write your code in this editor
if (!is_undefined(global.currRoom)) {
	if(global.currRoom == R1_1) {
		room_goto(StoryPage)
	}
	else room_goto(global.currRoom);
} else {
	room_goto(StoryPage)
}
