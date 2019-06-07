/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);

#region animation
var a = global.animations[0]
var cf = a[round(frame)% array_length_1d(a)];
var h = cf[0];
var b = cf[1];
var f1 = cf[2];
var f2 = cf[3];
var d = dir;

draw_sprite_ext(sprites[0],0,x+f2[0]*d,y+f2[1],d,1,f2[2],c_white,1);
draw_sprite_ext(sprites[0],0,x+f1[0]*d,y+f1[1],d,1,f1[2],c_white,1);
draw_sprite_ext(sprites[1],0,x+b[0]*d,y+b[1],d,1,b[2],c_white,1);
draw_sprite_ext(sprites[2],0,x+h[0]*d,y+h[1],d,1,h[2],c_white,1);

#endregion


if(spotted){
	draw_set_color(c_yellow);
	draw_text(x,y-64,"!");
	draw_set_color(c_white);
}

draw_sprite_ext(spr_gun,gun,x+lengthdir_x(48,gDir),y+lengthdir_y(48,gDir),1,dir,gDir,c_white,1);

/*
if(instance_exists(target)){
	draw_line_width_color(x,y,target.x,target.y,4,c_blue,c_blue);
}

if(!is_undefined(path)){
	for(var i = 0; i < array_length_1d(path)-1; i++){
		draw_arrow(path[i].x,path[i].y,path[i+1].x,path[i+1].y,10);
	}
}