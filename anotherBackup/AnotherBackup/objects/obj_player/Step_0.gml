/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	#region get input
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);
	key_jump_held = keyboard_check(vk_space) || keyboard_check(vk_up);
	key_scope = mouse_check_button(mb_right);
	key_shoot = mouse_check_button(mb_left) && canShoot;
	key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	key_up_pressed = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
	key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	key_melee = keyboard_check_pressed(ord("F"));
	#endregion

	dir = point_direction(x,y,mouse_x,mouse_y);

	#region update hsp
	if(state == 0){
		hsp += (key_right - key_left)*msp;
		if(place_meeting(x,y+1,obj_solid)){
			//hsp -= sign(hsp)*2;
			if(key_left == key_right){
				hsp = 0;
			}
			rOnGround = 5;
		}
		hsp = min(max(-mhsp,hsp),mhsp);
	}else if(state == 1){
		hsp = (key_right - key_left)*cspd;
		//while(!place_meeting(x+hsp,y,obj_ladder)){
			//hsp -= sign(hsp);
		//}
	}
	#endregion

	#region horizontal collisions
	if(!place_meeting(x+hsp, y, obj_solid)){
		x += hsp;
	}else{
		while(!place_meeting(x+sign(hsp),y,obj_solid)){
			x += sign(hsp);
		}
		hsp = 0;
	}
	#endregion

	#region update vsp
	if(state == 0){
		vsp ++;
		if(place_meeting(x,y+1,obj_solid) || rOnGround > 0){
			if(key_jump){
				vsp = -jsp;
				rOnGround = 0;
			}
		}
		rOnGround = max(0,rOnGround-1);
		vsp = min(max(-mvsp,vsp),mvsp);
		if(!key_jump_held){
			vsp = max(vsp, -4);
		}
	}else if(state == 1){
		vsp = (key_down-key_up)*cspd;
		if(place_meeting(x,y,obj_ladder)){
			while(!place_meeting(x,y+vsp,obj_ladder)){
				vsp -= sign(vsp);
			}
		}
		if(key_jump){
			vsp = -jsp;
			state = 0;
		}
	}
	#endregion

	#region vertical collsions
	if(!place_meeting(x, y+vsp, obj_solid)){
		y += vsp;
	}else{
		while(!place_meeting(x,y+sign(vsp),obj_solid)){
			y += sign(vsp);
		}
		vsp = 0;
	}
	#endregion

	#region guns
	if(state == 0){
		if(!instance_exists(obj_melee)){
			global.scope = key_scope;
			if(key_shoot){
				if(reloads[gun] <= 0){
					if(global.ammo[gun] > 0){
						var d = 1;
						if(dir > 90 && dir < 270){d = -1;} 
						if(!collision_line(x,y,x+lengthdir_x(128,dir-d*4),y+lengthdir_y(128,dir-d*4),obj_solid,false,true)){
							var b = instance_create_depth(x+lengthdir_x(128,dir-d*4),y+lengthdir_y(128,dir-d*4),0,obj_bullet);
							b.dir = dir + random_range(-dRand[gun],dRand[gun]);
							b.image_angle = dir;
						}
						reloads[gun] = dReloads[gun];
						audio_play_sound(snds[gun],0,0);
						obj_control.sShake += 5;
						with(obj_enemy){
							if(point_distance(x,y,obj_player.x,obj_player.y) < 512){
								addTask(0,50,60,[obj_player.x+irandom_range(-128,128),obj_player.y+irandom_range(-128,128)]);
							}
						}
						global.ammo[gun] = global.ammo[gun] - 1;
						shot = 3;
					}
				}
			}
		}else{
			global.scope = false;
		}
		reloads[gun] = max(0, reloads[gun]-1);

		if(mouse_wheel_up()){
			gun = (gun + 1) % 2;
		}
		if(mouse_wheel_down()){
			gun--;
			if(gun < 0){gun += 2}
		}
	}
	
	shot = max(0, shot-1);
	
	
	if(key_melee && !instance_exists(obj_melee)){
		var d = 1;
		mDir = 330;
		if(dir > 90 && dir < 270){d = -1; mDir = 210} 
		instance_create_depth(x+d*64,y,0,obj_melee)
		
	}
	if(instance_exists(obj_melee)){
		if(mDir < 90 || mDir > 270){
			mDir += 5;
		}else{
			mDir -= 5;
		}
		dir = mDir;
	}
	#endregion

	#region climb ladder
	if(state == 0){
		if(place_meeting(x,y,obj_ladder)){
			if(key_up){
				state = 1;
			}
		}
	}else if(state == 1){
		global.scope = false;
		if(!place_meeting(x,y,obj_ladder) || place_meeting(x,y+1,obj_wall)){
			state = 0;
		}
	}
	#endregion

	#region animation
	if(hsp != 0){
		anim = 0;
	}else{
		anim = 1;
	}
	var a = global.animations[anim]
	frame = (frame + 0.5) % array_length_1d(a);
	#endregion

}