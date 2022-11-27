/// @desc Spawn Timer

trandom = irandom_range(60, 100);
alarm_set(0, trandom);

rand = irandom(4)

switch (rand){
	case 0:
	if (spawns[rand] != 1){
		for (x = 0; x < array_length(spawns); x++){
			if (x != rand)
				spawns[x] = 0;
			else
				spawns[x] = 1;
		}
		instance_create_depth(600, 288, 1, obj_island);
	} else {
		alarm_set(0, 1);
	}
	break;
	
	case 1:
	if (spawns[rand] != 1){
		for (x = 0; x < array_length(spawns); x++){
			if (x != rand)
				spawns[x] = 0;
			else
				spawns[x] = 1;
		}
		randTwo = random_range(30, 150);
		instance_create_depth(550, randTwo, 1, obj_plane);
	} else {
		alarm_set(0, 1);
	}
	break;
	
	case 2:
	if (spawns[rand] != 1){
		for (x = 0; x < array_length(spawns); x++){
			if (x != rand)
				spawns[x] = 0;
			else
				spawns[x] = 1;
		}
		randTwo = random_range(220, 280);
		instance_create_depth(550, randTwo, 1, obj_shark);
	} else {
		alarm_set(0, 1);
	}
	break;
	
	case 3:
	if (spawns[rand] != 1){
		for (x = 0; x < array_length(spawns); x++){
			if (x != rand)
				spawns[x] = 0;
			else
				spawns[x] = 1;
		}
		instance_create_depth(550, 192, 1, obj_buoy);
	} else {
		alarm_set(0, 1);
	}
	break;
	
	case 4:
	if (spawns[rand] != 1){
		for (x = 0; x < array_length(spawns); x++){
			if (x != rand)
				spawns[x] = 0;
			else
				spawns[x] = 1;
		}
		instance_create_depth(550, 135, 1, obj_baloon);
	} else {
		alarm_set(0, 1);
	}
	break;
}
