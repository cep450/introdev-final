
//using a state machine instead of rooms cause I think it's cool when you get seamless
//transitions, menus showing over the game, ect

enum gamestate {
	title,
	controls,
	game,
	endscreen
	//BUCKETLIST pause screen
}

currentState = gamestate.title;
sendToState = gamestate.title;

global.music = audio_play_sound(snd_music_hipass, 3, true);
audio_sound_set_track_position(global.music, 100);

buttonYBase = 300;
buttonYMargin = 100;

buttonStart = instance_create_layer(x, y, "Instances", obj_menubutton);
buttonControls = instance_create_layer(x, y, "Instances", obj_menubutton);
buttonControlsBack = instance_create_layer(x, y, "Instances", obj_menubutton);
buttonRetry = instance_create_layer(x, y, "Instances", obj_menubutton);
buttonRetryBack = instance_create_layer(x, y, "Instances", obj_menubutton);

with(buttonStart) {
	text = "GET KRILLIN'";
	sendTo = gamestate.game;
	selected = true;
	down = obj_gamestate.buttonControls;
	ypos = obj_gamestate.buttonYBase;
	draw = true;
}
with(buttonControls) {
	text = "HOW TO KRILL";
	sendTo = gamestate.controls;
	up = obj_gamestate.buttonStart;
	ypos = obj_gamestate.buttonYBase + string_height(text) + obj_gamestate.buttonYMargin;
	draw = true;
}
with(buttonControlsBack) {
	text = "BACK";
	sendTo = gamestate.title;
	selected = true;
	ypos = obj_gamestate.buttonYBase + string_height(text) + 2 * obj_gamestate.buttonYMargin;
}
with(buttonRetry) {
	text = "KRILL AGAIN?";
	sendTo = gamestate.game;
	selected = true;
	down = obj_gamestate.buttonRetryBack;
	ypos = obj_gamestate.buttonYBase * 1.6;
}
with(buttonRetryBack) {
	text = "BACK TO TITLE";
	sendTo = gamestate.title;
	up = obj_gamestate.buttonRetry;
	ypos = obj_gamestate.buttonYBase * 1.6 + string_height(text) + obj_gamestate.buttonYMargin;
}

