///@desc scr_getVelSmoothX(initial velocity, angle, accel mag, decel mag, velocity mag cap)

var v_x_vel_frac = argument0;
var v_moveAngle = argument1;
var v_mag_accel = argument2;
var v_mag_decel = argument3;
var v_mag_vel_cap = argument4;
var v_x_accel = 0;

//ok, we have the angle. now get the velocity vector in each direction
if(v_moveAngle != noone) {
	//if a control is being pressed/force is being applied...
	v_x_accel = cos(v_moveAngle) * v_mag_accel;
		
	v_x_vel_frac += v_x_accel;
		
	//now, apply to velocity, capping
	if(v_x_vel_frac > 0) {
		v_x_vel_frac = min(v_x_vel_frac, v_mag_vel_cap * cos(v_moveAngle));
	} else {
		v_x_vel_frac = max(v_x_vel_frac, v_mag_vel_cap * cos(v_moveAngle));
	}	
}
	
//now, add friction/decel in the opposite direction if no accel on that axis
if(v_x_accel == 0) {
	if(v_x_vel_frac >= v_mag_decel) {
		v_x_vel_frac -= v_mag_decel;
	} else if(v_x_vel_frac <= -v_mag_decel) {
		v_x_vel_frac += v_mag_decel;
	} else {
		v_x_vel_frac = 0;	
	}
}
	
return v_x_vel_frac;
	