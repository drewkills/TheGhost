/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_block_middle;
if(place_meeting(x+2,y,obj_wall) && !place_meeting(x-2,y,obj_wall)){
	image_xscale = 1;
}else if(place_meeting(x-2,y,obj_wall) && !place_meeting(x+2,y,obj_wall)){
	image_xscale = -1;
}
sprite_index = spr_vines;
image_index = 1;