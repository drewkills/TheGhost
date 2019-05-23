var s = 96;
for(var i = 0; i < 15; i++){
	instance_create_layer(x+irandom_range(-s,s), y+irandom_range(-s,s), "Explosions", obj_explosion)
}
instance_destroy();
obj_control.sShake += 20;