/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_middle);
draw_set_font(fnt_deadM);

draw_text(room_width/2,room_height/3,"You Won!");
draw_text(room_width/2,room_height/3+128,"Your score is " + string(points));

draw_text(room_width/2,room_height/2,"Name: "+name);