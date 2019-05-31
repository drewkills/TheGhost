var s = 160;
for(var i = 0; i < 25; i++){
	instance_create_layer(x+irandom_range(-s,s), y+irandom_range(-s,s), "Explosions", obj_explosion)
}

audio_play_sound(snd_explosion,0,0);
audio_play_sound(snd_explosion1,0,0);
audio_play_sound(snd_explosion2,0,0);

instance_destroy();
obj_control.sShake += 20;