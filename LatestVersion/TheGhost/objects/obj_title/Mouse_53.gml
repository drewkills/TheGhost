/// @description Insert description here
// You can write your code in this editor
switch(select){
	case 0:
		room_goto(rm_introStory);
		break;
	case 1:
		room_goto(rm_scores);
		break;
	case 2:
		game_end();
		break;
}