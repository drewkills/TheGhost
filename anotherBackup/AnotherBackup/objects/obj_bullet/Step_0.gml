/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	lx = x;
	ly = y;
	hsp = lengthdir_x(96,dir);
	vsp = lengthdir_y(96,dir);


	if(collision_line(x,y,x+hsp,y+vsp,obj_barrel,false,true)){
		var s = 96;
		var b = instance_nearest(x,y,obj_barrel);

		with(b){
			explode();
		}
		instance_destroy();
	}


	if(collision_line(x,y,x+hsp,y+vsp,obj_enemy,false,true)){
		audio_play_sound(snd_enemyHit,0,0);
		var e = instance_nearest(x+hsp/2,y+vsp/2,obj_enemy);
		if(y+vsp < e.y+16 || y < e.y+16){
			if(instance_exists(obj_aEnemy)){
				if(e ==  instance_nearest(x+hsp/2,y+vsp/2,obj_aEnemy)){
					e.hp--;
				}else{
					e.hp = 0;
				}
			}else{
				e.hp = 0;
			}
		}else{
			if(instance_exists(obj_aEnemy)){
				if(e !=  instance_nearest(x+hsp/2,y+vsp/2,obj_aEnemy)){
					e.hp--;
				}
			}else{
				e.hp--;
			}
			with(e){
				if(instance_exists(obj_player)){
					addTask(0,50,180,[obj_player.x,obj_player.y]);
				}
			}
		}
	
		#region blood
		for(var i = 0; i < 20; i++){
			var b = instance_create_depth(x,y,0,obj_blood);
			b.hsp = hsp;
			b.vsp = vsp;
			b.hsp /= 8;
			b.vsp /= 8;
			b.hsp += random_range(-4,4);
			b.vsp += random_range(-4,4);
		}
		#endregion
		
		#region if player purchased explosive bullets, explode on impact
		if(global.bulletsExplode){
			explode();
		}
		#endregion
		
		instance_destroy();
	}

	if(collision_line(x,y,x+hsp,y+vsp,obj_solid,false,true)){
		if(global.bulletsExplode){
			explode();
		}
		instance_destroy();
	}else{
		x += hsp;
		y += vsp;
	}
	/*timer--
	if(timer <= 0){
		instance_destroy();
	}*/
}