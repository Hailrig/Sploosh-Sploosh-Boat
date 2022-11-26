/// @desc Core player logic

if (keyboard_check(vk_space)) {
	goDown = true;
} else {
	goDown = false;
}

if (goDown and y >= 192){
	vspeed = swimSpeed;
}

if (y > 192){
	gravity = -.3;
}
if (y < 192){
	gravity = .13;
	crashDown = false;
}
if (y = 192){
	gravity = 0;
}

if ((y < 192) and (y+vspeed>192) and (crashDown == false)){
	vspeed = vspeed/2;
	if ((vspeed < .4) and (vspeed > -.4)){
		y = 192;
		vspeed = 0;
	}
	crashDown = true
}

//animations

if (y <= 192){
	image_index = 0;
}
if (image_index == 0 and y > 194 and alarm_get(0) <= 0){
	alarm_set(0, 20);
	image_index = 1;
}

if (vspeed > 0){
	this = instance_place(x, y+1, obj_floor)
	if (this != noone){
		vspeed = 0;
		y = this.y-1;
	}
}

if (place_meeting(x, y, obj_enemy)){
	room_restart();
}