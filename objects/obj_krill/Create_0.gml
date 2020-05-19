
swarming = false;
pickupDistance = 20; //get close to add to swarm

target = noone;

fireDelay = 15;
fireTimer = 0;
fireGroupCooldown = 100;
fireGroupNum = 3;
fireGroupCounter = 0;

krillAwayDistance = 4; //krill won't get too close to each other
//krillCheckRadius = 10; //to factor in density
krillStuckTimer = 0;
krillStuckThresh = 10;
unstuckDistX = 8;
unstuckDistY = 4;


//so like.... each shrimp within a distance adds to a density value,
//and adds more if it's closer
//and when the density reaches a certain value it stops moving.
//or maybe more dense = packs closer? test both
//so it'll add max radius - the distance


mag_accel = 0.2;
mag_decel = 0.1;

mag_vel_cap = 2.2;

x_vel_frac = 0;
y_vel_frac = 0;


driftTimer = 100;
driftTimerThresh = 100;
/*
driftVelCap = 0.6;
driftAccelMag = 0.2;
driftDecelMag = 0.1;
driftAngle = 0;
*/
driftVel = 0.2;
//driftAngle = degtorad(point_direction(x, y, global.PLAYER.x, global.PLAYER.y));
driftAngle = random(pi * 2);
driftAngleWiggle = 0.5;


//init a krill

//generate: x, y, direction






