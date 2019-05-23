/// @description Insert description here
// You can write your code in this editor
if(global.pause){
	switch(select){
		case 0:
			global.pause = false;
			break;
		case 1:
			room_goto(rm_title);
			break;
		case 2:
			game_end();
			break;
	}
}