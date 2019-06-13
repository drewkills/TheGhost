/// @description Insert description here
// You can write your code in this editor
switch(select){
	case 0:
		if(global.money >= 200){
			global.ammo[1] = global.ammo[1]+10;
			global.money -= 200;
			audio_play_sound(snd_purchased,0,0);
		}else{
			audio_play_sound(snd_cantAfford,0,0);
		}
		break;
	case 1:
		if(global.money >= 150){
			global.ammo[0] = global.ammo[0]+10;
			global.money -= 150;
			audio_play_sound(snd_purchased,0,0);
		}else{
			audio_play_sound(snd_cantAfford,0,0);
		}
		break;
	case 2:
		if(array_length_1d(options) >= 4){
			if(global.money >= 800){
				options = [options[0], options[1], options[3]]
				global.bulletsExplode = true;
				global.money-=800
				audio_play_sound(snd_purchased,0,0);
			}else{
				audio_play_sound(snd_cantAfford,0,0);
			}
			break;
		}
	case 3:
		global.cRoom++;
		room_goto(global.rooms[global.cRoom]);
		break
}