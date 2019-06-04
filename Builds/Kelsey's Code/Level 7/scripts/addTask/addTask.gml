var i = argument0;
var p = argument1;
var d = argument2;
var m = argument3;

if(ds_list_find_index(tasks,i) == -1){
	ds_list_add(tasks,i);
	ds_list_add(priority,p);
	ds_list_add(timers,d);
	ds_list_add(misc,m);
}else{
	ds_list_set(timers,ds_list_find_index(tasks,i),d)
	ds_list_set(misc,ds_list_find_index(tasks,i),m)
}