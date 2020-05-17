

if(swarming) {
	
	//move
	//try to go towards the player
	//don't if there's shrimp in the way, though
	
	var angle = degtorad(point_direction(x, y, global.PLAYER.x, global.PLAYER.y));
	
	
	
	
	
	//fire?
	//if there's an enemy close, fire
	//if the player is firing in a direction, fire after a delay
	
	
	//
	
	
	
	
	
	
} else {
	//not swarming, will just drift
	
	//check if picked up by player
	if(distance_to_object(global.PLAYER) < pickupDistance) {
		swarming = true;
	}
	
}



