/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_main);
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