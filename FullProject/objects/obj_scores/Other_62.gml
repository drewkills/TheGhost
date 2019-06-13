/// @description Insert description here
// You can write your code in this editor

#region load highscores in as json
var json = async_load[? "result"];

if(!is_undefined(json)){
	var map = json_decode(json);
	if(map == -1){
		show_debug_message("huh");
		exit;
	}
	var i = 1;
	while (i <= num){
		if(ds_map_exists(map, "p"+string(i))){
			var name = map[? "p"+string(i)]
			names[i-1] = name;
		}else{
			names[i-1] = "no score yet";
		}
		i++
	}
	var i = 1;
	while (i <= num){
		if(ds_map_exists(map, "s"+string(i))){
			var name = real(map[? "s"+string(i)]);
			scores[i-1] = name;
		}else{
			exit;
		}
		i++
	}
}else{
	show_debug_message("got undefined, trying again");
	room_restart();
}
#endregion