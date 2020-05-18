///@desc scr_getVelSmoothY(initial velocity, angle, accel mag, decel mag, velocity mag cap)

var v_y_vel_frac = argument0;
var v_moveAngle = argument1;
var v_mag_accel = argument2;
var v_mag_decel = argument3;
var v_mag_vel_cap = argument4;
var v_y_accel = 0;

///NOTE: -sin not sin cause "negative y" is up and positive y is down
//but an up angle wants to give you positive numbers

//ok, we have the angle. now get the velocity vector in each direction
if(v_moveAngle != noone) {
	//if a control is being pressed/force is being applied...
	v_y_accel = -sin(v_moveAngle) * v_mag_accel;
		
	v_y_vel_frac += v_y_accel;
		
	//now, apply to velocity, capping
	if(v_y_vel_frac > 0) {
		v_y_vel_frac = min(v_y_vel_frac, v_mag_vel_cap * -sin(v_moveAngle));
	} else {
		v_y_vel_frac = max(v_y_vel_frac, v_mag_vel_cap * -sin(v_moveAngle));
	}	
}
	
//now, add friction/decel in the opposite direction if no accel on that axis
if(v_y_accel == 0) {
	if(v_y_vel_frac >= v_mag_decel) {
		v_y_vel_frac -= v_mag_decel;
	} else if(v_y_vel_frac <= -v_mag_decel) {
		v_y_vel_frac += v_mag_decel;
	} else {
		v_y_vel_frac = 0;	
	}
}
	
return v_y_vel_frac;