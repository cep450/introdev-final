


hasControl = false;
alive = true;

aimAngle = 0;

fireDelay = 10;
fireTimer = 0;
bulletSpawnDist = 12;

doCollis = false; //TODO

//acceleration/decelleration magnitudes
mag_accel = 0.17;
//used for the diagonal keyboard/mouse controls movement, for easy use
//mag_accel_diag = sin(45) * mag_accel;
mag_decel = 0.1; //like a friction value
//max velocity
mag_vel_cap = 2;


//applied to velocity during step
x_accel = 0;
y_accel = 0;

//fractional x/y velocities during step
x_vel_frac = 0;
y_vel_frac = 0;

