/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	var d = 1;
	if(dir > 90 && dir < 270){d = -1;} 
	if(!collision_line(x,y,x+lengthdir_x(128,dir-d*4),y+lengthdir_y(128,dir-d*4),obj_solid,false,true)){
		#region calculate laser x and y;
		var d = 64
		var xc = lengthdir_x(d,point_direction(x,y,mouse_x,mouse_y));
		var yc = lengthdir_y(d,point_direction(x,y,mouse_x,mouse_y));
		xx = x+lengthdir_x(100,dir);
		yy = y+lengthdir_y(100,dir);
		for(var i = 0; i < 36; i++){
			if(!collision_line(x+lengthdir_x(128,dir),y+lengthdir_y(128,dir),xx+xc,yy+yc,obj_solid,false,true)){
				xx+=xc;
				yy+=yc;
			}else{
				xc /= 2;
				yc /= 2;
			}
		}
		#endregion
	}else{
		xx = x+lengthdir_x(100,dir);
		yy = y+lengthdir_y(100,dir);
	}
}