/// @description Insert description here
// You can write your code in this editor
while(!place_meeting(x,y+2,obj_solid)){
	y+= 2;
}

alarm[0] = 800;

d = 1;
if(irandom(1) == 1){
	d = -1;
}