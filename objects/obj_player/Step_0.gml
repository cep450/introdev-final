




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
	
	
	
	//do movement
	
	//first, get the acceleration to apply by getting the angle of where we're going
	moveAngle = noone;
	
	if(global.controlWith == controlstate.mouse) {
		
		//up only / down only. angle will get overwritten if it's up/down + something else.
		if(global.keyUP) {
			//up only
			moveAngle = pi / 2;
		}
		if(global.keyDOWN) {
			//down only
			moveAngle = (3 * pi) / 2;
		}
	
		if(global.keyLEFT) {
			image_xscale = 1;
		
			if(global.keyUP) {
				//left + up
				moveAngle = (3 * pi) / 4;
			} else if(global.keyDOWN) {
				//left + down
				moveAngle = (5 * pi) / 4;
			} else {
				//left only
				moveAngle = pi;
			}
		}
		
		if(global.keyRIGHT) {
			image_xscale = -1;
		
			if(global.keyUP) {
				//right + up
				moveAngle = pi / 4;
			} else if(global.keyDOWN) {
				//right + down
				moveAngle = (7 * pi) / 4;
			} else {
				//right only
				moveAngle = 0;
			}
		}
	}
	
	///scr_getSmoothVelX/Y(x/y_vel_initial, angle, mag_accel, mag_decel)
	///returns x/y_vel_frac
	x_vel_frac = scr_getVelSmoothX(x_vel_frac, moveAngle, mag_accel, mag_decel, mag_vel_cap);
	y_vel_frac = scr_getVelSmoothY(y_vel_frac, moveAngle, mag_accel, mag_decel, mag_vel_cap);
	
	//finally, add the velocity to the x/y positions.
	if(doCollis) {
		//player is the only one left, do collision to see if they die
		
	} else {
		//player only dies if there's no more krill in the swarm. ignore collis
		x += round(x_vel_frac);
		y += round(y_vel_frac);
		y = max(y, obj_contr_game.mapTopBound);
		y = min(y, obj_contr_game.mapBottomBound);
		
	}
	
	
	
}







