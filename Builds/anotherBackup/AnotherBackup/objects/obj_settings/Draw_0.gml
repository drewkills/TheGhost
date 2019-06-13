/// @description Insert description here
// You can write your code in this editor
var vals = [global.showHealthbar,global.cleanMode];
for(var i = 0; i < array_length_1d(options); i++){
	var p = 0;
	if(i == select){
		p = 1;
	}
	if(select != i){
		scr_text(options[i],0,128,128+i*82,0);
	}else{
		scr_text(options[i],0,128+32,128+i*82,0);
	}
	var temp = "false";
	if(vals[i]){temp = "true";}
	scr_text(temp,0,(room_width/4)*3,128+i*82,0);
}

scr_text_small("Press ESC to return to main menu",0, 128,room_height-128, 0);