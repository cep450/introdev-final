
//number of krill in swarm
numKrill = 1;
//number of krill collected all time for the course of the game
allKrill = 1;
//most krill at one time
mostKrill = 1;

//score (from kills, swarm size ect)
gscore = 0;

//number of kills, all enemy types combined
numKills = 0;

//number of enemy types
numEn = 4;
//parallel arrays for enemy stuff instead of different variable names, for easy changing
//starting from 1 for convenience
killsEn[1] = 0;
killsEn[2] = 0;
killsEn[3] = 0;
killsEn[4] = 0;


currKrill = 0;
allKrill = 0;
maxKrill = 0;

numKills = 0;
numScore = 0;


//could do all this in the objects but it's more convenient to have it
//all in one place
//# enemies on screen of that type
enOnscreen[1] = 0;
enOnscreen[2] = 0;
enOnscreen[3] = 0;
enOnscreen[4] = 0;

//points for each enemy type, also helps w/ difficulty/spawning
enPoints[1] = 0;
enPoints[2] = 0;
enPoints[3] = 0;
enPoints[4] = 0;

//hp for each enemy type
enHp[1] = 0;
enHp[2] = 0;
enHp[3] = 0;
enHp[4] = 0;



//ok its only gonna spawn fish for now cause thats all i have implemented
spawntimer = 0;













