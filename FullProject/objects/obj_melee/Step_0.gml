/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	x = obj_player.x + d*48;
	y = obj_player.y;
}


if(!global.pause){
	if(place_meeting(x,y,obj_enemy)){
		var e = instance_nearest(x,y,obj_enemy);
		if(!arrayContains(hits,e)){
			audio_play_sound(snd_enemyHit,0,0);
			hits[array_length_1d(hits)] = e;
			if(e.dir == d){
				e.hp -= 3;
			}else{
				e.hp -= 1;
			}
			with(e){
				if(instance_exists(obj_player)){
					addTask(0,50,30,[obj_player.x,obj_player.y]);
				}
			}
			for(var i = 0; i < 20; i++){
				var b = instance_create_depth(x,y,0,obj_blood);
				b.hsp = 7*d;
				b.vsp = -5;
				b.hsp += random_range(-4,4);
				b.vsp += random_range(-4,4);
			}
		}
	}
	image_speed = 1;
}else{
	image_speed = 0;
}