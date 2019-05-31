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
draw_text(16,16,"$"+string(global.money));
draw_text(16,16+64,"Sniper Ammo: "+string(global.ammo[1]));
draw_text(16,16+64*2,"Pistol Ammo: "+string(global.ammo[0]));