/// @description Insert description here
// You can write your code in this editor
key_jump = false;
key_up = false;

#region health
if(hp <= 0){
	var corpse = instance_create_depth(x,y,depth,obj_corpse);
	corpse.sprites = sprites;
	corpse.xx = obj_player.x;
	corpse.yy = obj_player.y;
	instance_destroy();
}
#endregion

#region hsp stuffs

hsp = min(max(-mhsp,hsp),mhsp);

if(!place_meeting(x+hsp, y, obj_solid)){
	x += hsp;
}else{
	while(!place_meeting(x+sign(hsp),y,obj_solid)){
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}
#endregion

#region vsp stuffs

vsp = min(max(-mvsp,vsp),mvsp);

if(!place_meeting(x,y+vsp,obj_solid)){
	y += vsp;
}else{
	while(!place_meeting(x,y+sign(vsp),obj_solid)){
		y += sign(vsp)
	}
	vsp = 0;
}
#endregion

#region detect and add tasks
if(spotted){
	if(instance_exists(obj_player)){
		gDir = point_direction(x,y,obj_player.x,obj_player.y);
	
		if(!collision_line(x,y,obj_player.x,obj_player.y,obj_solid,false,true) && point_distance(x,y,obj_player.x,obj_player.y) < 1200){
			if(reload <= 0 && !key_up){
				var d = 1;
				if(gDir > 90 && gDir < 270){d = -1;} 
			
				var b = instance_create_depth(x+lengthdir_x(128,gDir-d*4),y+lengthdir_y(128,gDir-d*4),0,obj_bullet_enemy);
				b.dir = gDir + random_range(-3,3);
				b.image_angle = gDir;
				reload = 80;
			}
		}	
	}
}else{
	gDir += 0.5*rDir;
	
	if(irandom(75) == 42){
		rDir *= -1;
	}
}


#endregion

gDir = (gDir + 360) % 360;

if(gDir < 90 || gDir > 270){
	dir = 1;
}else{
	dir = -1;
}

if(dir == 0){dir = 1;}

reload = max(0,reload-1);


timer = max(0,timer-1);
if(timer <= 0){spotted = false};