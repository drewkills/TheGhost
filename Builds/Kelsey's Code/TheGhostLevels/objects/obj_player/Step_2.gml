/// @description Insert description here
// You can write your code in this editor
#region calculate laser x and y;
var d = 64
var xc = lengthdir_x(d,point_direction(x,y,mouse_x,mouse_y));
var yc = lengthdir_y(d,point_direction(x,y,mouse_x,mouse_y));
xx = x+lengthdir_x(100,dir);
yy = y+lengthdir_y(100,dir);
for(var i = 0; i < 32; i++){
	if(!collision_line(x+lengthdir_x(128,dir),y+lengthdir_y(128,dir),xx+xc,yy+yc,obj_solid,false,true)){
		xx+=xc;
		yy+=yc;
	}else{
		xc /= 2;
		yc /= 2;
	}
}
#endregion