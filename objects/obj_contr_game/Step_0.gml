/// @description Insert description here
// You can write your code in this editor


//count swarming krill
numKrill = 1; //the player
for(var i = 0; i < instance_number(obj_krill); i++) {
	if(instance_find(obj_krill, i).swarming) {
		numKrill++;	
	}
}


//keep most krill count updated
if(numKrill > mostKrill) {
	mostKrill = numKrill;	
}



//spawning
if(runtimers) {
	
	if(timeCounter > timeThresh) {
		timeCounter = 0;
		timeSurvived++;
	} else {
		timeCounter++;	
	} 
	
	
	/*
	spawnval- higher = spawn more difficult enemies
	- enemy values on screen
	+ krill allies values on screen
	+ total krill allies (way of measuring time really)
	+ killing enemies
	*/
	
	
	enOnscreen[0] = numKrill;
	
	//try to spawn enemies
	if(spawntimer > spawntimerthresh) {
		spawntimer = 0;
		
		spawnpoints = timeSurvived * timePointsMult;
		//get spawn allowance
		for(var i = 0; i <= numEn; i++) {
			spawnpoints += enSpawnVal[i] * enOnscreen[i];
		}
		//try to spawn enemies
		for(var i = numEn; i > 0; i--) {
			if(spawnpoints >= enSpawnCost[i]) {
				//spawn that type
				scr_spawn(enType[i], enemSpawnDistPadding, enemSpawnDistMult);
				enOnscreen[i]++;
				break;
			}
		}
		
	} else {
		spawntimer++;	
	}
	
	
	//spawn krill allies
	if(krillSpawnTimer > krillSpawnThresh) {
		krillSpawnTimer = irandom_range(-krillSpawnWiggle, krillSpawnWiggle);
		scr_spawn(obj_krill, krillSpawnDistPadding, krillSpawnDistMult);
	} else {
		krillSpawnTimer++;	
	}
	
	
}



