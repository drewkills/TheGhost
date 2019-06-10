/// @description Insert description here
// You can write your code in this editor
hp = 3;

#region movement
hsp = 0;
vsp = 0;
msp = 2;
jsp =  17;
mhsp = 4;
mvsp = 32;
dir = 1;
#endregion

#region task stuff
tasks = ds_list_create();
priority = ds_list_create();
timers = ds_list_create();
misc = ds_list_create();

lNode = -4;
lTarget = -4;

lMisc = [];
#endregion

r = 45;
spotted = false;

reload = 0;
dReload = 40;
target = -4;


frame = 0;

sprites = [spr_foot, spr_eBody, spr_eHead];
type = obj_enemy;
gun = 0;

path = [];

sDelay = 0;