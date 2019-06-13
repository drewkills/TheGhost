/// @description Insert description here
// You can write your code in ths editor

if(string_length(name) < 10){
	for(var i = 0; i < string_length(letters); i++){
		if(keyboard_check_pressed(ord(string_char_at(letters,i)))){
			name = name + string_char_at(letters,i);
		}
	}
}


if(keyboard_check_pressed(vk_backspace)){
	name = string_delete(name,string_length(name),1)
}

if(keyboard_check_pressed(vk_enter)){
	http_post_string("http://gmscoreboard.com/handle_score.php?tagid=5ced51769befa15590567582415&player="+ name + "&score=" + string(points), "");
	room_goto(rm_title);
}