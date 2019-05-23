/// @description Insert description here
// You can write your code in this editor
cam = camera_create();
camera_set_view_pos(cam,0,0);
camera_set_view_size(cam,1920,1080);
view_set_camera(0,cam);

global.scope = false;

global.maxHp = 50;
global.hp = global.maxHp;


path = [];
beaten = false;
hpFin = 0;

xx = 0;
yy = 0;


sShake = 0;


global.pause = false;