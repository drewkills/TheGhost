path[array_length_1d(path)] = id;
if(id == global.m){
	if(array_length_1d(path) < global.l){
		var t = global.temp;
		t.h[t.u] = path[min(1,array_length_1d(path)-1)];
		global.l = array_length_1d(path)
	}
}else{
	if(array_length_1d(path) < global.l){
		for (var i = 0; i < array_length_1d(connected); i++){
			if(!arrayContains(path, connected[i])){
				connected[i].path = path;
				with(connected[i]){
					//if(irandom(100000) == 0){
						pathFind();
					//}
				}
			}
		}
	}
}