/// @description Insert description here
// You can write your code in this editor
#region calculate laser x and y;
var xc = lengthdir_x(64,gDir);
var yc = lengthdir_y(64,gDir);
xx = x+lengthdir_x(100,gDir);
yy = y+lengthdir_y(100,gDir);
for(var i = 0; i < 32; i++){
	if(!collision_line(x+lengthdir_x(128,dir),y+lengthdir_y(128,dir),xx+xc,yy+yc,obj_solid,false,true)){
		xx+=xc;
		yy+=yc;
	}else{
		xc /= 2;
		yc /= 2;
	}
}

if(collision_line(x,y,xx,yy,obj_player,false,true)){
	spotted = true;
	timer = 60;
}

#endregion