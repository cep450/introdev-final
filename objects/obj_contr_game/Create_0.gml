
drawstats = false;
drawendstats = false;
drawhelp = false;

//upper and lower bounds of the map
mapTopBound = 210;
mapBottomBound = 780;

//number of krill in swarm
numKrill = 1;
//number of krill collected all time for the course of the game
allKrill = 0;
//most krill at one time
mostKrill = 1;

timeSurvived = 0;
timeCounter = 0;
timeThresh = 30;

timePointsMult = 0.1;


//score (from kills, swarm size ect)
gscore = 0;

//number of kills, all enemy types combined
numKills = 0;


//number of enemy types
numEn = 2;
//parallel arrays for enemy stuff instead of different variable names, for easy changing
//starting from 1 because
//[0] is for krill allies!
enType[1] = obj_en_shrimp;
enType[2] = obj_en_fish;

killsEn[1] = 0;
killsEn[2] = 0;

//# enemies on screen of that type
enOnscreen[0] = 0;
enOnscreen[1] = 0;
enOnscreen[2] = 0;

//how much reducing spawn value when on screen
enSpawnVal[0] = 10;
enSpawnVal[1] = -10;
enSpawnVal[2] = -10;

//increase difficulty/give spawn points for kills
enKillVal[1] = 10;
enKillVal[2] = 10;

//cost to spawn
enSpawnCost[1] = 1000; //not good dont spawn
enSpawnCost[2] = 5;

//all enemies also have points and hp
//and store their type index in an index variable

//ok its only gonna spawn fish for now cause thats all i have implemented
spawntimer = 0;
spawntimerthresh = 90;
spawnpoints = 0;
enemSpawnDistMult = 0.4;
enemSpawnDistPadding = 20;

runtimers = false;

krillSpawnTimer = 0;
krillSpawnThresh = 90;
krillSpawnWiggle = 20;
krillSpawnDistMult = 0.2;
krillSpawnDistPadding = 15;

//spawn some to begin with
scr_spawn(obj_krill, krillSpawnDistPadding, krillSpawnDistMult);
scr_spawn(obj_krill, krillSpawnDistPadding, krillSpawnDistMult);



strGameName = "KRILL 'EM ALL";

strNumKrill = "SWARM SIZE: ";
strAllKrill = "TOTAL RECRUITED: ";
strMostKrill = "BIGGEST SWARM: ";
strTimeSurvived = "TIME SURVIVED: ";

strGameOver = "KRILLED!!!";

//maybe do this as an array to loop thru to display
strShrimp = "SHRIMP SILENCED: " //silenced or subdued
strFish = "FISH FILLETED: ";
strPenguin = "PENGUINS PRAWN'D: ";
//strCuttlefish = "CUTTLEFISH CREAMED: "; //creamed or clobbered
strBird = "BIRDS BEATEN: ";
strOctopus = "OCTOPI OUTMATCHED: ";
strWhale = "WHALES WIPED: ";

strNumKills = "TOTAL KILLS: ";
strScore = "FINAL SCORE: ";

//for "all time" stats, can use the same names




