/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
msp = 2;
jsp =  16;
mhsp = 8;
mvsp = 32;
cspd = 5;

xx = x;
yy = y;

gun = 1;

dRand = [8,0.5]

rOnGround = 0;

reloads = [0,0];
dReloads = [30,80];
snds = [snd_pistol,snd_sniper]

state = 0;

#region animations
sprites = [spr_foot, spr_body, spr_head];

frame = 0;
anim = 0;

shot = 0;
gl = [40,120]
#endregion

alarm[0] = 5;
canShoot = false;
mDir = 0;