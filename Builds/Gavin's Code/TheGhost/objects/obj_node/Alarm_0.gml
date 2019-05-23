/// @description Insert description here
// You can write your code in this editor
global.temp = id;
a = [];
h = [];
with(obj_node){
	var t = global.temp;
	t.a[array_length_1d(t.a)] = id;
	t.h[array_length_1d(t.h)] = -4;
	path = [];
}
u = 0;
for(var m = 0; m < array_length_1d(a); m++){
	dist = 0;
	global.m = a[m];
	global.l = 10000;
	global.temp = id;
	global.c = 1;
	
	path = [];
	
	pathFind();
	u++;
}
