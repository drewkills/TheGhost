var i = argument0;

if(ds_list_find_index(tasks,i) != -1){
	var m = ds_list_find_index(tasks,i);
	ds_list_delete(tasks,m);
	ds_list_delete(priority,m);
	ds_list_delete(timers,m);
	ds_list_delete(misc,m);
}