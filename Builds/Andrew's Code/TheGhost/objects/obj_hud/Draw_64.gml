/// @description Insert description here
// You can write your code in this editor
if(!global.pause){
	draw_set_font(fnt_main);

	draw_set_halign(fa_left);
	for(var i = 0; i < array_length_1d(global.objective); i++){
		draw_text(8,8+i*24,global.objective[i]);
	}


	var xx = window_get_width()/2;
	var yy = window_get_height() - (window_get_height()/8);
	var w = 300;
	var s = w/global.maxHp;
	//draw_set_alpha(0.5);
	draw_set_color(c_red);
	draw_rectangle(xx+(w/2)-(global.maxHp-global.hp)*s,yy-8,xx+(w/2),yy,false);
	draw_set_color(c_green);
	draw_rectangle(xx-(w/2),yy,xx-(w/2)+(global.hp/global.maxHp)*w,yy-8,false);


	draw_set_alpha(1);

	var g = 0;
	if(instance_exists(obj_player)){
		g = obj_player.gun;
	}

	draw_set_color(c_white);
	draw_sprite_ext(spr_gun,g,xx-64,window_get_height()-64,1,1,30,c_white,1);

	draw_text(xx+64,window_get_height()-64,global.ammo[g]);
}else{
	draw_set_alpha(0.3);
	draw_set_color(c_black);
	draw_rectangle(0,0,window_get_width(),window_get_height(),false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_center);


	draw_set_font(fnt_deadM);
	draw_text(window_get_width()/2,window_get_height()/3,"PAUSED");


	draw_set_font(fnt_main);
	for(var i = 0; i < array_length_1d(options); i++){
		var o = 0;
		var p = "";
		if(i == select){
			o = 0;
			p = ">"
		}
		draw_text(window_get_width()/2+o,window_get_height()/2+i*64,p+options[i]);
	}
}