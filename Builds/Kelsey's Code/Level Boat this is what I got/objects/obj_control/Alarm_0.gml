/// @description Insert description here
// You can write your code in this editor
//room_restart();
//room_goto_next();
global.money += round(300 * (eCount-instance_number(obj_enemy))/eCount); // default reward (depends on percentage of enemies killed)

#region bonuses
if(global.hp == global.maxHp){
	global.money += 50;
}
#endregion



room_goto(rm_inbetween);