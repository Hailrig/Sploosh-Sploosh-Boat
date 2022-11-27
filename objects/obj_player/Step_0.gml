/// @desc Core player logic

if (keyboard_check(vk_space)) {
	goDown = true;
} else {
	goDown = false;
}
if (keyboard_check_pressed(vk_space)){
	pressed = 2;
}

if (goDown and y >= 192){
	vspeed = swimSpeed;
}

if (y > 192){
	gravity = -.2;
}
if (y < 192){
	gravity = .13;
	crashDown = false;
}
if (y == 192){
	gravity = 0;
}

if ((y < 192) and (y+vspeed>192) and (crashDown == false)){
	if ((vspeed < .4) and (vspeed > -.4)){
		y = 192;
		vspeed = 0;
	} else {
		vspeed = vspeed/2;
	}
	crashDown = true
}

//animations

if (vspeed <= 0){
	image_index = 0;
}
if (image_index == 0 and vspeed > 1.1 and alarm_get(0) <= 0 and pressed >= 1){
	alarm_set(0, 20);
	image_index = 1;
	pressed--;
}

if ((y < 193) and (y > 191) and (wake == noone) and (vspeed > -.02) and (vspeed < .02)){
	wake = instance_create_depth(x, y, -1, obj_wake);
} 
if ((wake != noone) and ((y > 193) or (y < 191))){
	if (instance_exists(wake)){ 
		wake.die();
	}
	wake = noone;
}

if ((y < 192) and (y + vspeed >= 192) and (vspeed >= 1.5)) {
	water = instance_create_depth(x, y, -1, obj_splash)
	water.sprite_index = spr_bigSplash
}

if ((y < 192) and (y + vspeed >= 192) and (vspeed < 1.5) and (vspeed > .1)) {
	water = instance_create_depth(x, y, -1, obj_splash)
	water.sprite_index = spr_smallSplash
}

if ((y > 192) and (y + vspeed <= 192) and (vspeed <= -1.5)) {
	water = instance_create_depth(x, y, -1, obj_splash)
	water.sprite_index = spr_bigJump
}

if ((y > 192) and (y + vspeed <= 192) and (vspeed > -1.5) and (vspeed < -.1)) {
	water = instance_create_depth(x, y, -1, obj_splash)
	water.sprite_index = spr_smallJump
}

//end animations

if (vspeed > 0){
	this = instance_place(x, y+1, obj_floor)
	if (this != noone){
		vspeed = 0;
		y = this.y-1;
	}
}

if (place_meeting(x, y, obj_enemy)){
	die();
}

function die(){
	
	if (wake != noone){
		if (instance_exists(wake)){ 
			wake.die();
		}
		wake = noone;
	}
	instance_create_depth(x, y, -1, obj_blam);
	instance_destroy();
}