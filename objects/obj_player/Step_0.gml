




/*still happens when no control:
- gun follows the mouse/stick
*/
//update fire angle


if(global.controlWith == controlstate.mouse) {
	aimAngle = point_direction(x, y, mouse_x, mouse_y);
}





if(hasControl) {
	
	
	
	
	
	
	
	if(global.keyFIRE) {
		
		if(fireTimer <= 0) {
			//go ahead and fire
			
			scr_create_bullet(x, y, -aimAngle, spr_bullet_player, bulletSpawnDist);
			
			fireTimer = fireDelay;
		} else {
			//can't fire, still waiting on timer
			fireTimer--;	
		}
		
		

		
	}
	
	
	//MAKESHIFT FOR TESTING
	//TODO
	if(global.keyLEFT) {
		x -= 1;	
		image_xscale = 1;
	}
	if(global.keyRIGHT) {
		x += 1;	
		image_xscale = -1;
	}
	if(global.keyUP) {
		y -= 1;	
	} 
	if(global.keyDOWN) {
		y += 1;	
	}
	
	
	
	
}












global.playerx = x;
global.playery = y;

