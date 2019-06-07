/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_deadM);
for(var i = 0; i < num; i++){
	draw_text(16,16+48*i,names[i]);
	draw_text(room_width/2,16+48*i,scores[i]);
}