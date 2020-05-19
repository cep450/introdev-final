
//change the state
if(currentState != sendToState) {
	/*
	//title -> controls (controls)
	//controls -> title (back)
	//title -> game (play)
		delete all enemy and krill instances, if any
		enable control on the player
	//game -> endscreen (died)
	//endscreen -> game (play again)
		delete all enemy and krill instances
	//endscreen -> title (back to title)
	*/
	
	//////////TODO
	//////////NOT DOING SLIDING MENU BUTTONS FOR NOW. JUST SET VISIBLE/NONVISIBLE FOR NOW
	/*
	if(currentState == gamestate.title && sendToState == gamestate.controls) {
		
		
	} else if(currentState == gamestate.title && sendToState == gamestate.controls) {
		
		
	}
	*/
	
	if(currentState == gamestate.controls) {
		buttonControlsBack.draw = false;
		buttonControlsBack.selected = false;
		obj_contr_game.drawhelp = false;
	}
	if(currentState == gamestate.title) {
		buttonControls.draw = false;
		buttonStart.draw = false;
	}
	if(currentState == gamestate.endscreen) {
		buttonRetry.draw = false;
		buttonRetryBack.draw = false;
		obj_contr_game.drawendstats = false;
		obj_title.text = "KRILL 'EM ALL!!!";
	}
	if(currentState == gamestate.game) {
		obj_title.draw = true;	
		obj_contr_game.drawstats = false;
		obj_contr_game.runtimers = false;
		scr_switchmusic(snd_music_hipass);
	}
	
	
	
	
	if(sendToState == gamestate.game) {
		global.PLAYER.hasControl = true;
		global.PLAYER.alive = true;
		obj_title.draw = false;
		obj_contr_game.drawstats = true;
		obj_contr_game.runtimers = true;
		obj_contr_game.timeSurvived = 0;
		obj_contr_game.allKrill = 0;
		scr_switchmusic(snd_music_normal);
		currentState = gamestate.game;
	}
	
	if(sendToState == gamestate.controls) {
		buttonControlsBack.draw = true;
		buttonControlsBack.selected = true;
		obj_contr_game.drawhelp = true;
		currentState = gamestate.controls;
	}
	
	if(sendToState == gamestate.title) {
		global.PLAYER.alive = true;
		buttonControls.draw = true;
		buttonStart.draw = true;
		buttonControls.selected = false;
		buttonStart.selected = true;
		currentState = gamestate.title;
	}
	
	if(sendToState == gamestate.endscreen) {
		global.PLAYER.hasControl = false;
		global.PLAYER.alive = false;
		buttonRetry.draw = true;
		buttonRetryBack.draw = true;
		buttonRetry.selected = true;
		buttonRetryBack.selected = false;
		obj_contr_view.targetreslevel = 0;
		obj_contr_game.drawendstats = true;
		obj_title.text = "KRILL'D!!!";
		currentState = gamestate.endscreen;
	}
	
	
	
}



