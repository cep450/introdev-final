
//change the state
if(currentState != sendToState) {
	/*
	//title -> game (play)
		delete all enemy and krill instances, if any
		enable control on the player
	//game -> endscreen (died)
	//endscreen -> game (play again)
		delete all enemy and krill instances
	//endscreen -> title (back to title)
	*/
	
	if(currentState == gamestate.title && sendToState == gamestate.controls) {
		//title -> controls (controls)
		
	} else if(currentState == gamestate.title && sendToState == gamestate.controls) {
		//controls -> title (back)
		
	}
	
	
}



