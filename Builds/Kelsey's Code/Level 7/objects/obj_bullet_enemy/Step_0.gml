/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	lx = x;
	ly = y;
	hsp = lengthdir_x(96,dir);
	vsp = lengthdir_y(96,dir);


	if(collision_line(x,y,x+hsp,y+vsp,obj_player,false,true)){
		global.hp-= 5;
	
		audio_play_sound(snd_playerHit,0,0);
		
		for(var i = 0; i < 20; i++){
			var b = instance_create_depth(x,y,0,obj_blood);
			b.hsp = hsp;
			b.vsp = vsp;
			b.hsp /= 8;
			b.vsp /= 8;
			b.hsp += random_range(-4,4);
			b.vsp += random_range(-4,4);
		}
	
		instance_destroy();
	}

	if(collision_line(x,y,x+hsp,y+vsp,obj_solid,false,true)){
		instance_destroy();
	}else{
		x += hsp;
		y += vsp;
	}
	timer--
	if(timer <= 0){
		instance_destroy();
	}
}