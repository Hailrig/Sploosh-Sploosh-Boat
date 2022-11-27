/// @desc ??
if (room == rm_main){
	time = global.currentTime - global.startTime;
	draw_text(0, 0, "Feet: " + string(time));
}

if (room == rm_score){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(256, 50, "Score: " + string(time) + " feet.");
	draw_text(256, 100, "Previous best score: " + string(pastScore) + " feet.");
	draw_text(256, 150, "Press space to quit, or enter to play again!");
	draw_text(256, 250, "Music by Bensound");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}