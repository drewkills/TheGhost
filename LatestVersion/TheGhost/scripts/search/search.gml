if(global.s){
	path[array_length_1d(path)] = id;
	
	if(id == global.m && array_length_1d(path) < global.l ){
		var searcher = global.searcher;
		searcher.path = path;
		global.s = false;
	}else{
		temp1 = -4;
		for(var p = 0; p < array_length_1d(a); p++){
			if(a[p] == global.m){
				temp1 = p;
			}
		}

		if(temp1 != -4){
			var b = h[temp1]
			if(instance_exists(b)){
				b.path=path;
				with(b){
					search();
				}
			}
		}
	}
}
