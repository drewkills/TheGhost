/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	if(place_meeting(x,y,obj_enemy)){
		var e = instance_nearest(x,y,obj_enemy);
		if(!arrayContains(hits,e)){
			hits[array_length_1d(hits)] = e;
			with(e){
				hp--;
			}
		}
	}


	if(place_meeting(x,y,obj_player)){
		var e = instance_nearest(x,y,obj_player);
		if(!arrayContains(hits,e)){
			hits[array_length_1d(hits)] = e;
			global.hp -= 5;
		}
	}
	image_speed = 1;
}else{
	image_speed = 0;
}