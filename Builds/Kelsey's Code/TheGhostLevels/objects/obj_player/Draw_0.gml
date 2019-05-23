/// @description Insert description here
// You can write your code in this editor
var d = 1;
var rdir = dir;
if(dir > 90 && dir < 270){d = -1; dir += 180} 


#region animation
var a = global.animations[anim]
var cf = a[round(frame)% array_length_1d(a)];
var h = cf[0];
var b = cf[1];
var f1 = cf[2];
var f2 = cf[3];

draw_sprite_ext(spr_foot,0,x+f2[0]*d,y+f2[1],d,1,f2[2],c_white,1);
draw_sprite_ext(spr_foot,0,x+f1[0]*d,y+f1[1],d,1,f1[2],c_white,1);
draw_sprite_ext(spr_body,0,x+b[0]*d,y+b[1],d,1,b[2],c_white,1);
draw_sprite_ext(spr_head,0,x+h[0]*d,y+h[1],d,1,h[2],c_white,1);

#endregion


#region draw gun
if(state == 0){
	draw_sprite_ext(spr_gun,gun,x+lengthdir_x(48,rdir),y+lengthdir_y(48,rdir),d,1,dir,c_white,1);

	if(gun == 1){
		draw_set_color(c_red);
		draw_line(x+lengthdir_x(100,rdir),y+lengthdir_y(100,rdir),xx,yy)
		draw_set_color(c_white);
	}
}
#endregion

#region reload
if(reloads[gun] != 0){
	draw_set_color(c_blue);
	draw_rectangle(x-32,y-64,x+32,y-60,false);
	draw_set_color(c_green);
	draw_rectangle(x-32,y-64,x-32 + (reloads[gun]/dReloads[gun])*64,y-60,false);
	draw_set_color(c_white);
}
#endregion