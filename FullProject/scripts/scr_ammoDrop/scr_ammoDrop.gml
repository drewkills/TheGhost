if(irandom_range(0,global.ammo[0])==0){
	instance_create_depth(x,y+60,0,obj_AmmoPickup);
}else{
	if(irandom_range(0,global.ammo[1]+1)==0){
		instance_create_depth(x,y+60,0,obj_SniperAmmoPickup);
	}
}