/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_escape)){
	global.pause = !global.pause;
}
if(instance_exists(obj_player)){
	if(global.scope && obj_player.gun == 1){
		xx = min(max(0,((obj_player.x+mouse_x)/2)-960),room_width-1920);
		yy = min(max(0,((obj_player.y+mouse_y)/2)-540),room_height-1080);
	}else{
		xx = min(max(0,obj_player.x-960),room_width-1920);
		yy = min(max(0,obj_player.y-540),room_height-1080);
	}
}


camera_set_view_pos(cam,xx+irandom_range(-sShake,sShake),yy+irandom_range(-sShake,sShake));

layer_x("Background",camera_get_view_x(cam));
layer_y("Background",camera_get_view_y(cam));

sShake -= sign(sShake);

global.hp = min(global.maxHp, global.hp);


if(!instance_exists(obj_target)){
	if(beaten == false){
		alarm[0] = 90;
		beaten = true;
		hpFin = global.hp;
	}
}

if(global.hp <= 0 && instance_exists(obj_player)){
	alarm[1] = 60;
	with(obj_player){
		var corpse = instance_create_depth(x,y,depth,obj_corpse);
		corpse.sprites = sprites;
		corpse.xx = obj_player.x;
		corpse.yy = obj_player.y;
	}
	instance_destroy(obj_player);
}

if(beaten){
	global.hp = hpFin;
}



#region debug
if(keyboard_check_pressed(ord("N"))){
	instance_destroy(obj_target);
}
#endregion