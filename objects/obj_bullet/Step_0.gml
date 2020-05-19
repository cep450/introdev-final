/// @description Insert description here
// You can write your code in this editor


if(live) {

	var enem = noone;
	for(var i = 0; i < vel_vec; i++) {
	
		x_pos_frac += x_vec_frac;
		x = round(x_pos_frac);
		enem = instance_place(x, y, obj_par_enemy);
		if(enem != noone) {
			break;
		}
	
		y_pos_frac += y_vec_frac;
		y = round(y_pos_frac);
		enem = instance_place(x, y, obj_par_enemy);
		if(enem != noone) {
			break;	
		}
	}
	if(enem != noone) {
		//hit something...
	
		//don't hit anything else
		live = false;
	
		//play hit animation
		image_speed = 1;
	
		//stop moving
		vel_vec = 0;
	
		//make sound
		audio_play_sound(snd_bullet_hit, 10, false);
	
		//screenshake
		//obj_contr_view.shakemag += shakeHit;
	
		with(enem) {
			hp -= other.dmg;
			if(hp <= 0) {
				//if it killed it
				//shake some more
				//obj_contr_view.shakemag += shakeKill;
				//add a kill to total kills...
				obj_contr_game.numKills += 1;
				obj_contr_game.killsEn[index] += 1;
				obj_contr_game.enOnscreen[index] -= 1;
				obj_contr_game.gscore += points;
				
				instance_destroy(self);
			}
		
		}
	
	}

}




