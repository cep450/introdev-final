

if(swarming) {
	
	//move
	
	var moveAngle = degtorad(point_direction(x, y, global.PLAYER.x, global.PLAYER.y));
	
	//scr_getVelSmoothY(initial velocity, angle, accel mag, decel mag, velocity mag cap)
	
	x_vel_frac = scr_getVelSmoothX(x_vel_frac, moveAngle, mag_accel, mag_decel, mag_vel_cap);
	y_vel_frac = scr_getVelSmoothY(y_vel_frac, moveAngle, mag_accel, mag_decel, mag_vel_cap);
	
	//try to go towards the player
	//don't if there's shrimp in the way, though
	
	
		
		//do collision
		
	var x_sign = sign(x_vel_frac);
	var y_sign = sign(y_vel_frac);
	var x_move = abs(round(x_vel_frac));
	var y_move = abs(round(y_vel_frac));
	
	//sprite flip
	if(x_sign > 0) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
	
	if(distance_to_object(obj_par_krill) <= krillAwayDistance) {
		//if we're already in there...
		krillStuckTimer++;
		if(krillStuckTimer > krillStuckThresh) {
			krillStuckTimer = 0;
			print("stuck");
			//try to get unstuck
			
			var origx = x;
			var origy = y;
			var counter = 0;
			while(counter < 10 && distance_to_object(obj_par_krill) <= krillAwayDistance) {
				x = origx + irandom_range(-unstuckDistX, unstuckDistX);
				y = origy + irandom_range(-unstuckDistY, unstuckDistY);
				counter++;
			}
			
		}
	}
	
	for(var i = max(x_move, y_move); i > 0; i--) {
		
		if(x_move > 0) {
			x_move--;
			x += x_sign;
			//if we're in a krill's bubble, don't move in that dir
			if(distance_to_object(obj_par_krill) <= krillAwayDistance) {
				x_move = 0;	
				x -= x_sign;
			}
		}
		
		if(y_move > 0) {
			y_move--;
			y += y_sign;
			//if we're in a krill's bubble, don't move in that dir
			if(distance_to_object(obj_par_krill) <= krillAwayDistance) {
				y_move = 0;	
				y -= y_sign;
			}
		}
	}
		

	
	//fire?
	//if there's an enemy close, fire
	//if the player is firing in a direction, fire after a delay
	
	
	//
	
	
	

	
} else {
	//not swarming, will just drift
	
	if(driftTimer > driftTimerThresh) {
		driftTimer = 0;
		//driftAngle = random(2 * pi);
		driftAngle += random_range(-driftAngleWiggle, driftAngleWiggle);
		
	} else {
		driftTimer++;	
		
		x += cos(driftAngle) * driftVel;
		y += -sin(driftAngle) * driftVel;
		
		/*
		x_vel_frac = scr_getVelSmoothX(x_vel_frac, driftAngle, driftAccelMag, driftDecelMag, driftVelCap);
		y_vel_frac = scr_getVelSmoothY(y_vel_frac, driftAngle, driftAccelMag, driftDecelMag, driftVelCap);
		x += round(x_vel_frac);
		y += round(y_vel_frac);
		*/
	}
	
	//check if picked up by player
	if(distance_to_object(global.PLAYER) < pickupDistance) {
		swarming = true;
		//count this krill
		obj_contr_game.numKrill++;
		obj_contr_game.allKrill++;
		audio_play_sound(snd_krill_add, 10, false);
	}
	
}



