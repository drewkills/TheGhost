/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	key_jump = false;
	key_up = false;

	#region task stuffs

	#region timers
	for(var i = 0; i < ds_list_size(timers); i++){
		var c = ds_list_find_value(timers,i)-1;
		if(c==0){
			ds_list_delete(timers,i);
			ds_list_delete(tasks,i);
			ds_list_delete(priority,i);
			ds_list_delete(misc,i);
			i--;
		}else{
			ds_list_set(timers,i,c);
		}
	}
	#endregion

	#region most important thing
	mostImportantTask();
	#endregion

	#endregion

	#region health
	if(hp <= 0){
		var corpse = instance_create_depth(x,y,depth,obj_corpse);
		corpse.sprites = sprites;
		if(instance_exists(obj_player)){
			corpse.xx = obj_player.x;
			corpse.yy = obj_player.y;
		}else{
			corpse.xx = x;
			corpse.yy = y;
		}
		instance_destroy();
	}
	#endregion

	#region hsp stuffs
	hsp += (dir)*msp;
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
	if(key_up){
		vsp = -4;
	}
	else{
		vsp ++;
	}


	if(place_meeting(x,y+1,obj_solid)){
		if(key_jump){
			vsp = -jsp;
		}
	}

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
	if(instance_exists(obj_player)){
		if(sign(obj_player.x-x) == dir){
			var d = point_direction(x,y,obj_player.x,obj_player.y);
			if(!collision_line(x,y,obj_player.x,obj_player.y,obj_solid,false,true) && point_distance(x,y,obj_player.x,obj_player.y) < 800){
				addTask(0,50,300,[obj_player.x,obj_player.y]);
			}
		}
	}

	if(place_meeting(x,y,obj_corpse)){
		global.temp = instance_nearest(x,y,obj_corpse);
		var t = global.temp;
		addTask(1,45, 600, [t.xx,t.yy]);
		with(obj_enemy){
			var t = global.temp;
			if(point_distance(x,y,t.x,t.y) < 640){
				var s = 128;
				addTask(1,45, 600, [t.xx,t.yy]);
			}
		}
	}



	#endregion

	if(dir == 0){dir = 1;}

	reload = max(0,reload-1);

	#region animation
	var a = global.animations[0]
	frame = (frame + 0.5) % array_length_1d(a);
	#endregion
	
	#region fire gun
	if(sDelay == 1){
		audio_play_sound(snd_pistol,0,0);
		var d = 1;
		if(gDir > 90 && gDir < 270){d = -1;} 
		var b = instance_create_depth(x+lengthdir_x(128,gDir-d*4),y+lengthdir_y(128,gDir-d*4),0,obj_bullet_enemy);
		b.dir = gDir + random_range(-7,7);
		b.image_angle = gDir;
		reload = dReload;
		obj_control.sShake += 4;
	}
	sDelay = max(0,sDelay-1);
	#endregion
}