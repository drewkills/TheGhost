/// @description Insert description here
// You can write your code in this editor
select = round((window_mouse_get_y() - (window_get_height()/2)-64) / 128);

fTimer += 5 * (1-(global.hp/global.maxHp))+1;