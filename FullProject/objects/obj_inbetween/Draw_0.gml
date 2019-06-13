/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);


draw_set_font(fnt_deadM);
draw_text(room_width/2,room_height/3,"You finished a level.");


draw_set_font(fnt_main);
for(var i = 0; i < array_length_1d(options); i++){
	var o = 0;
	var p = "";
	if(i == select){
		o = 0;
		p = ">"
	}
	draw_text(room_width/2+o,room_height/2+i*64,p+options[i]);
}
draw_set_halign(fa_left);
//draw_text(16,16,"$"+string(global.money));
//draw_text(16,16+64,"Sniper Ammo: "+string(global.ammo[1]));
//draw_text(16,16+64*2,"Pistol Ammo: "+string(global.ammo[0]));



draw_sprite(spr_dollar,0,96,96);
scr_text_small(string(global.money),0,96+41,96,0);

draw_sprite_ext(spr_gun,0,96,96+82,1,1,30,c_white,1);
for(var i = 0; i < global.ammo[0]; i++){
	draw_sprite_ext(spr_bullet,0,160+i*16,96+82,1,1,45,c_white,1);
}

draw_sprite_ext(spr_gun,1,96,192+82,1,1,30,c_white,1);
for(var i = 0; i < global.ammo[1]; i++){
	draw_sprite_ext(spr_bullet,0,192+i*16,192+82,1,1,45,c_white,1);
}