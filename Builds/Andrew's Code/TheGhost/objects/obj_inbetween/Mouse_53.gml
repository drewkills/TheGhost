/// @description Insert description here
// You can write your code in this editor
switch(select){
	case 0:
		//room_goto(rm_init);
		break;
	case 1:
		//game_end();
		break;
	case 2:
		if(array_length_1d(options) >= 4){
			options = [options[0], options[1], options[3]]
			global.bulletsExplode = true;
			break;
		}
	case 3:
		global.cRoom++;
		room_goto(global.rooms[global.cRoom]);
		break
}