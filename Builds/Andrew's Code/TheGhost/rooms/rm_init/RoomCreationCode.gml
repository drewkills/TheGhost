randomise();
global.ammo = [30,10]; 
global.cRoom = 0;
global.rooms = [rm_tutorial, rm_level1, rm_level2];
global.objective = ["Please set objective","in creation code of each room","(Check rm_init's creation code for an example)"]
global.bulletsExplode = false;
room_goto(global.rooms[global.cRoom]);