/// @desc Core player logic

if (keyboard_check(vk_space)) {
	goDown = true;
} else {
	goDown = false;
}

if (goDown and y >= 144){
	vspeed = swimSpeed;
}

if (y > 144){
	gravity = -.15;
}
if (y < 144){
	gravity = .15;
	crashDown = false;
}
if (y = 144){
	gravity = 0;
}

if ((y < 144) and (y+vspeed>144) and (crashDown == false)){
	vspeed = vspeed/2;
	if ((vspeed < .4) and (vspeed > -.4)){
		y = 144;
		vspeed = 0;
	}
	crashDown = true
}


if (vspeed > 0){
	this = instance_place(x, y+1, obj_floor)
	if (this != noone){
		vspeed = 0;
		y = this.y-1;
	}
}



//else {goDown = false};

//if (y < 144) {
//	velocity+=force;
//	force = force / 2;
//}
//if ((y > 144) and (goDown == false)) {
//	velocity-=force
//	force = force / 2;
//}

//if (goDown){
//	this = instance_place(x, y+swimSpeed, obj_floor)
//	if (this == noone){
//		y+=swimSpeed;
//	} else {
//		y = this.y+swimSpeed;
//	}
//} else if (velocity != 0){
//	y += velocity;
//}
