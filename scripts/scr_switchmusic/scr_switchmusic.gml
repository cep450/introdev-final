
var audio = argument0;

var trackpos = audio_sound_get_track_position(global.music);
audio_stop_sound(global.music);
global.music = audio_play_sound(audio, 3, true);
audio_sound_set_track_position(global.music, trackpos);