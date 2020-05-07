
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
