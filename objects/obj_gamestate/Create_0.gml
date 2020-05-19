
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


view_width = camera_get_view_width(view_camera[0]);
buttonLeftX = -100;
buttonRightX = view_width + 20;
transitionSpeed = 0.5;

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
	xpos = obj_gamestate.buttonHomeX;
	ypos = 200;
	draw = true;
}
with(buttonControls) {
	text = "HOW TO KRILL";
	sendTo = gamestate.controls;
	up = obj_gamestate.buttonStart;
	xpos = obj_gamestate.buttonHomeX;
	ypos = 250;
	draw = true;
}
with(buttonControlsBack) {
	text = "BACK";
	sendTo = gamestate.title;
	selected = true;
	xpos = obj_gamestate.buttonRightX;
	ypos = 220;
	draw = false;
	draw = true;
}
with(buttonRetry) {
	text = "KRILL AGAIN?";
	sendTo = gamestate.game;
	selected = true;
	down = obj_gamestate.buttonRetryBack;
	xpos = obj_gamestate.buttonHomeX;
	ypos = 200;
	draw = false;
}
with(buttonRetryBack) {
	text = "BACK";
	sendTo = gamestate.title;
	up = obj_gamestate.buttonRetry;
	xpos = obj_gamestate.buttonHomeX;
	ypos = 250;
	draw = false;
}

