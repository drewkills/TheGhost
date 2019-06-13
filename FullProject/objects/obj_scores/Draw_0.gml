/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_deadM);
for(var i = 0; i < num; i++){
	scr_text(names[i],0, 16,16+82*i, 0);
	//draw_text(16,16+48*i,names[i]);
	scr_text(scores[i],0, (room_width/3)*2,16+82*i, 0);
	//draw_text(room_width/2,16+82*i,scores[i]);
}
scr_text_small("Press ESC to return to main menu",0, 16,room_height-41, 0);