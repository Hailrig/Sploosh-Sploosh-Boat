/// @desc Spawn Timer

rand = irandom(4)

switch (rand){
	case 0:
	case 1:
	case 2:
	randTwo = random_range(220, 270);
	instance_create_depth(550, randTwo, 1, obj_shark);
	break;
	case 3:
	instance_create_depth(550, 192, 1, obj_buoy);
	break;
	case 4:
	instance_create_depth(550, 100, 1, obj_baloon);
	break;
}

trandom = irandom_range(30, 60);
alarm_set(0, trandom);