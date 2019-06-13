/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);

draw_sprite(spr_ghost,0,room_width/2,room_height/4);


draw_set_font(fnt_main);
for(var i = 0; i < array_length_1d(options); i++){
	var p = 0;
	if(i == select){
		p = 1;
	}
	draw_sprite(options[i],p,(room_width/2),(room_height/5)*2+i*128);
}