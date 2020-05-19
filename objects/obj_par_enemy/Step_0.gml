/// @description Insert description here
// You can write your code in this editor



if(driftTimer > driftTimerThresh) {
		driftTimer = 0;
		driftAngle += random_range(-driftAngleWiggle, driftAngleWiggle);
		var playerAngle = degtorad(point_direction(x, y, global.PLAYER.x, global.PLAYER.y));
		//weighted average w. angle to player and drifting angle
		driftAngle = (driftAngle * (1 - driftAnglePlayer)) + (playerAngle * driftAnglePlayer);
		
	} else {
		driftTimer++;	
		
		x += cos(driftAngle) * driftVel;
		y += -sin(driftAngle) * driftVel;
		
		y = min(y, obj_contr_game.mapBottomBound);
		y = max(y, obj_contr_game.mapTopBound);
		
		if(cos(driftAngle) * driftVel > 0) {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
		
		/*
		x_vel_frac = scr_getVelSmoothX(x_vel_frac, driftAngle, driftAccelMag, driftDecelMag, driftVelCap);
		y_vel_frac = scr_getVelSmoothY(y_vel_frac, driftAngle, driftAccelMag, driftDecelMag, driftVelCap);
		x += round(x_vel_frac);
		y += round(y_vel_frac);
		*/
	}
	
	//quick and easy cause i need to finish this thing i've been awake for 23 hours
	var krill = instance_place(x, y, obj_krill) {
		if(krill != noone) {
			if(krill.swarming) {
				audio_play_sound(snd_krill_die, 10, false);
				obj_contr_game.numKrill--;
				instance_destroy(krill);
			} else {
				if(random(5) < 1) {
					instance_destroy(krill);
				}
			}
			
		}	
	}
	
	if(obj_contr_game.numKrill <= 1) {
		if(instance_place(x, y, obj_player) != noone) {
			obj_gamestate.sendToState = gamestate.endscreen;
			print("DEAD");
			audio_play_sound(snd_gameover, 10, false);
		}
	}
	
	