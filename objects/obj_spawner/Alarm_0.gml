/// @desc Spawn Timer

rand = irandom(4)

switch (rand){
	case 0:
	instance_create_depth(600, 288, 1, obj_island);
	break;
	case 1:
	randTwo = random_range(30, 150);
	instance_create_depth(550, randTwo, 1, obj_plane);
	break;
	case 2:
	randTwo = random_range(220, 270);
	instance_create_depth(550, randTwo, 1, obj_shark);
	break;
	case 3:
	instance_create_depth(550, 192, 1, obj_buoy);
	break;
	case 4:
	instance_create_depth(550, 115, 1, obj_baloon);
	break;
}

trandom = irandom_range(30, 60);
alarm_set(0, trandom);