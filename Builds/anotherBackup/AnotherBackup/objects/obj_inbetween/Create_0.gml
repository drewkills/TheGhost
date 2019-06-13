/// @description Insert description here
// You can write your code in this editor

options = ["Buy 10 sniper ammo ($200)","Buy 10 pistol ammo ($150)","Bullets are explosive for the next area ($800)", "Continue"];

select = -4;
global.bulletsExplode = false;


if(global.cRoom == array_length_1d(global.rooms)-1){
	room_goto(rm_win);
}