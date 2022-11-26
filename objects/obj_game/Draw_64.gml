/// @desc ??
if (room == rm_main){
	time = global.currentTime - global.startTime;
	draw_text(0, 0, "Feet: " + string(time));
}

if (room == rm_score){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(256, 100, "Score: " + string(time));
	draw_text(256, 150, "Previous best score: " + string(pastScore));
	draw_text(256, 200, "Press escape to quit, or enter to play again!");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}