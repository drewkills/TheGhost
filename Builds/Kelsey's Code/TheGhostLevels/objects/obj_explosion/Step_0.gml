/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_enemy)){
	var e = instance_nearest(x,y,obj_enemy);
	if(!arrayContains(hits,e)){
		hits[array_length_1d(hits)] = e;
		with(e){
			hp--;
		}
	}
}