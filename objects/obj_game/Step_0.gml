/// @desc Core game stepping
if (keyboard_check(vk_escape)){
	game_end();
}

if (room == rm_main){
	global.currentTime = get_timer()/1000000;
}

if (room == rm_score){
	if (keyboard_check(vk_space)){
		room_goto(rm_main);
	}
}