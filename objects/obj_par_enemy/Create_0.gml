
index = 0;
hp = 0;
points = 0;

driftVel = 1.3;
driftAngle = degtorad(point_direction(x, y, global.PLAYER.x, global.PLAYER.y));
driftAngleWiggle = 0.3;
driftAnglePlayer = 0.6;

driftTimer = 100;
driftTimerThresh = 100;