/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	vsp++;

	if(!place_meeting(x,y+vsp,obj_solid)){
		y+=vsp;
	}else{
		while(!place_meeting(x,y+sign(vsp),obj_solid)){
			y+= sign(vsp)
		}
		vsp = 0;
	}
	timer--;
	if(timer <= 0){
		instance_destroy();
	}
}