randomise();
global.ammo = [15,5]; 
global.cRoom = 0;
global.rooms = [rm_tutorial, rm_level1, rm_level2,rm_level3,rm_level4];
global.objective = ["Please set objective","in creation code of each room","(Check rm_init's creation code for an example)"]
global.bulletsExplode = false;
global.money = 0;
room_goto(global.rooms[global.cRoom]);