/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	if(!stuck){
		if(!place_meeting(x+hsp,y,obj_solid)){
			x += hsp;
		}else{
			while(!place_meeting(x+sign(hsp),y,obj_solid)){
				x += sign(hsp);
			}
			stuck = true;
			image_yscale = 2;
		}
	}



	if(!stuck){
		vsp += 1;
		if(!place_meeting(x,y+vsp,obj_solid)){
			y +=vsp;
		}else{
			while(!place_meeting(x,y+sign(vsp),obj_solid)){
				y += sign(vsp);
			}
			stuck = true;
			image_xscale = 2;
		}
	}
	timer--;
	image_alpha = min((timer/40),1);
	if(timer <= 0){
		instance_destroy();
	}
}