/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_middle);
for(var i = 0; i < array_length_1d(credits); i++){
	draw_text(room_width/2,room_height+i*64-scroll,credits[i]);
}