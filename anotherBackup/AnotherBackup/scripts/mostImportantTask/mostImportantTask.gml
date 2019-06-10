#region figure out which one
var p = -100;
var c = -1;
for(var i = 0; i < ds_list_size(priority); i++){
	if(ds_list_find_value(priority,i) > p){
		p = ds_list_find_value(priority,i);
		c = i;
	}
}
#endregion

show_debug_message(string(p) + ", " + string(c));
show_debug_message("")
#region and apply it and stuff


//reset values
spotted = false;
if(dir == 1){
	gDir = 0;
}else{
	gDir = 180;
}



if(c != -1){
	t = ds_list_find_value(tasks, c);
	var cMisc = ds_list_find_value(misc,c);
	
	switch(t){
		case 0: // spotted/can see player
			spotted = true;
			moveTowardsPoint(cMisc);
			
			gDir = point_direction(x,y,cMisc[0],cMisc[1])
			if(instance_exists(obj_player)){
				if(!collision_line(x,y,obj_player.x,obj_player.y,obj_solid,false,true)){
					dir = sign(obj_player.x - x);
					#region fire gun
					if(reload <= 0 && !key_up){
						if(sDelay == 0){
							sDelay = 6;
						}
					}
					#endregion
				}
			}
			if(place_meeting(x,y,global.m)){
				removeTask(0);
			}
			break;
		case 1:
			moveTowardsPoint(cMisc);
			if(place_meeting(x,y,global.m)){
				removeTask(1);
			}
			break;
		default:
			lNode = -4;
			lTarget = -4;
			target = -4;
			break;
	}
}
#endregion