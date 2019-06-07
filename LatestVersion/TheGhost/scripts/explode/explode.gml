
#region alert enemies
global.temp = id;
with(obj_enemy){
	var t = global.temp;
	if(point_distance(x,y,t.x,t.y) < 2000){
		addTask(0,20,120,[t.x+irandom_range(-128,128),t.y+irandom_range(-128,128)]);
	}
}
#endregion



var s = 200;
for(var i = 0; i < 96; i++){
	instance_create_layer(x+irandom_range(-s,s), y+irandom_range(-s,s), "Explosions", obj_explosion)
}

audio_play_sound(snd_explosion,0,0);
audio_play_sound(snd_explosion1,0,0);
audio_play_sound(snd_explosion2,0,0);

instance_destroy();
obj_control.sShake += 20;