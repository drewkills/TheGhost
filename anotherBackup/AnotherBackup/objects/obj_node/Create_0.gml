/// @description Insert description here
// You can write your code in this editor
connected = [];
global.b = id;
with(obj_node){
	b = global.b;
	if(id != b){
		if(!collision_line(x,y,b.x,b.y,obj_solid,false,false) && !collision_line(x,y,b.x,b.y,obj_block_nodes,false,false)){
			b.connected[array_length_1d(b.connected)] = id;
		}
	}
}
me = false;
alarm[0] = 1;

path = [];


u = 0

a = [];
h = [];
