/// @desc ??

pastScore = 0;

if (room == rm_main){
	global.startTime = get_timer()/1000000;
	global.currentTime = get_timer()/1000000;
}

if (room == rm_score){
	time = global.currentTime - global.startTime;
	if (room == rm_score){
		audio_pause_all();
		var _saveEntity = 
		{
			score : time,
		}
		if (file_exists("savedgame.save")){
			var _buffer = buffer_load("savedgame.save");
			var _string = buffer_read(_buffer, buffer_string);
			buffer_delete(_buffer);
			var _loadData = json_parse(_string);
			pastScore = _loadData.score
		}
	
		if (pastScore < time){
			var _string = json_stringify(_saveEntity);
			var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
			buffer_write(_buffer, buffer_string, _string);
			buffer_save(_buffer, "savedgame.save");
			buffer_delete(_buffer);
		}
	}
}