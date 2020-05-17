




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
			moveAngle =(3 * pi) / 2;
		}
		if(global.keyDOWN) {
			//down only
			moveAngle =  pi / 2;
		}
	
		if(global.keyLEFT) {
			image_xscale = 1;
		
			if(global.keyUP) {
				//left + up
				moveAngle = (5 * pi) / 4;
			} else if(global.keyDOWN) {
				//left + down
				moveAngle = (3 * pi) / 4;
			} else {
				//left only
				moveAngle = pi;
			}
		}
		
		if(global.keyRIGHT) {
			image_xscale = -1;
		
			if(global.keyUP) {
				//right + up
				moveAngle = (7 * pi) / 4;
			} else if(global.keyDOWN) {
				//right + down
				moveAngle = pi / 4;
			} else {
				//right only
				moveAngle = 0;
			}
		}
	}
	
	//ok, we have the angle. now move in that direction. not checking collision
	x_accel = 0;
	y_accel = 0;
	if(moveAngle != noone) {
		//if a control is being pressed/force is being applied...
		x_accel = cos(moveAngle) * mag_accel;
		y_accel = sin(moveAngle) * mag_accel;
		
		x_vel_frac += x_accel;
		y_vel_frac += y_accel;
		
		//now, apply to velocity, capping
		if(x_vel_frac > 0) {
			x_vel_frac = min(x_vel_frac, mag_vel_cap * cos(moveAngle));
		} else {
			x_vel_frac = max(x_vel_frac, mag_vel_cap * cos(moveAngle));
		}
		if(y_vel_frac > 0) {
			y_vel_frac = min(y_vel_frac, mag_vel_cap * sin(moveAngle));
		} else {
			y_vel_frac = max(y_vel_frac, mag_vel_cap * sin(moveAngle));
		}	
	}
	
	//now, add friction/decel in the opposite direction if no accel on that axis
	if(x_accel == 0) {
		if(x_vel_frac >= mag_decel) {
			x_vel_frac -= mag_decel;
		} else if(x_vel_frac <= -mag_decel) {
			x_vel_frac += mag_decel;
		} else {
			x_vel_frac = 0;	
		}
	}
	if(y_accel == 0) {
		if(y_vel_frac >= mag_decel) {
			y_vel_frac -= mag_decel;
		} else if(y_vel_frac <= -mag_decel) {
			y_vel_frac += mag_decel;
		} else {
			y_vel_frac = 0;	
		}
	}
	
	
	
	
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


//DEBUG
if(DEBUG_TIMER > 120) {
	DEBUG_TIMER = 0;
	instance_create_layer(x + 50, y + 50, "Instances_1", obj_krill);
} else {
	DEBUG_TIMER++;	
}




