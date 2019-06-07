var cMisc = argument0;

#region find target
dist = 100000;
temp = cMisc
global.m = -4;
global.searcher = id;
with(obj_node){
	me = false;
	var searcher = global.searcher
	if(!collision_line(x,y,searcher.temp[0],searcher.temp[1],obj_wall,false,false)){
		if(point_distance(x,y,searcher.temp[0],searcher.temp[1]) < searcher.dist){
			global.m = id;
			searcher.dist = point_distance(x,y,searcher.temp[0],searcher.temp[1]);
		}
	}
}
if(instance_exists(global.m)){
	if(global.m != lTarget){
		lTarget = global.m;
		lNode = -4;
	}
	with(global.m){
		me = true;
	}
}
#endregion
			
global.searcher = id;
dist = 100000000;
m = -4;
with(obj_node){
	path = [];
	var searcher = global.searcher;
	if(!collision_line(x,y,searcher.x,searcher.y,obj_wall,false,false)){
		if(point_distance(x,y,searcher.x,searcher.y) < searcher.dist){
			searcher.m = id;
			searcher.dist = point_distance(x,y,searcher.x,searcher.y);
		}
	}
}
path = [];
global.l = 1000000000;
global.safety = 10000;

if(instance_exists(global.m)){
	global.s = true
	with(m){
		searchInit(cMisc[0],cMisc[1])
	}
}


#region move towards next node
var s = 0;
dist = 1000;


if(path != []){
	for(var q = 1; q < array_length_1d(path); q++){
		var p = path[q];
		var p1 = path[q-1];
		if(collision_line(p.x, p.y, p1.x, p1.y, id, false, false)){
			target = p;
		}
	}
}



/*
target = -4;
if(path != []){
	for(var i = array_length_1d(path)-1; i >= 0; i--){
		var p = path[i];
		if(!collision_line(x,y,p.x,p.y,obj_solid,true,true) && point_distance(x,y,p.x,p.y) < dist ){
			if(place_meeting(x,y,p) || lNode == p || global.m != lTarget){
				target = path[min(array_length_1d(path)-1,i+1)];
				lNode = p;
			}else{
				target = p;
			}
			dist = point_distance(x,y,target.x,target.y);
		}
	}
}
*/



if(instance_exists(target)){
	dir = sign(target.x-x);
	if(dir == 0){dir = 1;}
	if(target.y < y && place_meeting(x,y,obj_ladder)){
		if(type != obj_aEnemy){
			key_up = true;
		}
	}else if(place_meeting(x+dir*64,y,obj_solid) || !position_meeting(x+dir*32,y+100,obj_solid)){
		if(target.y - 32 < y){
			if(type != obj_aEnemy){
				key_jump = true;
			}
		}
	}
}
#endregion