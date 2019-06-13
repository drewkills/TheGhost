///@arg string
///@arg frame
///@arg x
///@arg y
///@arg alignment
var vstr = string_lower(argument0);
var vframe = argument1;
var xw = argument2;
var yw = argument3;
var al = argument4;
var letters = "abcdefghijklmnopqrstuvwxyz0123456789"
var offset = 0;
switch(al){
	case 0:
		offset = 0;
		break;
	case 1:
		offset = (string_length(vstr)*41)/2;
		break;
	case 2:
		offset = string_length(vstr)*41;
		break;
	default:
		offset = 0;
		break;
}

for(var i = 1; i < string_length(vstr)+1; i++){
	var w = string_char_at(vstr,i);
	var index = 0;
	for(var u = 1; u < string_length(letters)+1; u++){
		if(string_char_at(letters,u) == w){
			index = u;
		}
	}
	if(index != 0){
		index -= 1;
		var l = (index) % 6;
		var t = round((index-2.9) / 6)
		
		draw_sprite_part(spr_letters_small,0,l*41,t*41,41,41,(xw-offset)+(i-1)*41,yw);
	}
}