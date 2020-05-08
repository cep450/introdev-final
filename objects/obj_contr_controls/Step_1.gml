/// @description Insert description here
// You can write your code in this editor

//this may do 2 keyboard checks for each, but,
//it's so much easier/more readable to code than the alternative

//controller controls
if() {
	global.controlWith = controlstate.controller;	
	
	//keyboard/mouse controls
} else if(mouse_check_button(mb_any) || 
			keyboard_check(vk_anykey)) {
	global.controlWith = controlstate.mouse;
}


//fire
keyFIRE = mouse_check_button(mb_any) || 
			keyboard_check(ord("K")) ||
			keyboard_check(ord("J")) ||
			keyboard_check(ord("L")) ||
			keyboard_check(vk_space);




//TODO
//make it so controller related stuff only runs if there IS a controller
//need to check for controoler in create event
//theres controller code online i think. see that






//fire, mouse/keyboard
if() {
	keyFIRE = true;
	global.controlWith = controlstate.mouse;
	
	//fire, controller
} else if() {
	keyFIRE = true;
	global.controlWith = controlstate.controller;
	
} else { //not firing
	keyFIRE = false;
}


//select, mouse/keyboard
if() {
	keyFIRE = true;
	global.controlWith = controlstate.mouse;
	
	//select, controller
} else if() {
	keyFIRE = true;
	global.controlWith = controlstate.controller;
	
} else { //not selecting
	keyFIRE = false;
}


//up, keyboard
if() {
	global.controlWith = controlstate.mouse;
	keyUP = true;
	
	//up, controller
} else if() {
	global.controlWith = controlstate.controller;
	keyUP = true;
	
	//not pressing up
} else {
	keyUP = false;
}










