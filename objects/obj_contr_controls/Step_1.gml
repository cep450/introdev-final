

if(keyboard_check(vk_anykey) || mouse_check_button(mb_any)) {
	global.controlWith = controlstate.mouse;
}

//FIRE/SELECT
if(gamepad_button_check(0, gp_face1) ||
	gamepad_button_check(0, gp_face2) ||
	gamepad_button_check(0, gp_shoulderl) ||
	gamepad_button_check(0, gp_shoulderr) ||
	gamepad_button_check(0, gp_shoulderrb) ||
	gamepad_button_check(0, gp_shoulderlb))
	 {
		//controller, fire, select
		global.controlWith = controlstate.controller;
		global.keyFIRE = true;
		global.keySELECT = true;
} 
else if(mouse_check_button(mb_left) ||
	keyboard_check(vk_space)) {
		//keyboard, fire, select
		global.keyFIRE = true;
		global.keySELECT = true;
}
else if(keyboard_check(ord("K")) ||
	keyboard_check(ord("J")) ||
	keyboard_check(ord("L")) ||
	mouse_check_button(mb_right)) {
		//keyboard, fire
		global.keyFIRE = true;
		global.keySELECT = false;
}
else if(keyboard_check(vk_enter) ||
	keyboard_check(vk_space) ||
	keyboard_check(ord("E")) ||
	mouse_check_button(mb_left)) {
		//keyboard, select
		global.keyFIRE = false;
		global.keySELECT = true;
} else {
	global.keyFIRE = false;
	global.keySELECT = false;
}


//BACK
if(gamepad_button_check(0, gp_face3)) { //TODO add back button
	
}
else if(keyboard_check(vk_escape) ||
	keyboard_check(vk_backspace)) {
		global.keyBACK = true;
} else {
	global.keyBACK = false;	
}


//TODO add controller
//LEFT
if(keyboard_check(ord("A")) ||
	keyboard_check(vk_left)) {
	global.keyLEFT = true;
} else {
	global.keyLEFT = false;	
}

//RIGHT
if(keyboard_check(ord("D")) ||
	keyboard_check(vk_right)) {
	global.keyRIGHT = true;
} else {
	global.keyRIGHT = false;	
}

//UP
if(keyboard_check(ord("W")) ||
	keyboard_check(vk_up)) {
	global.keyUP = true;
} else {
	global.keyUP = false;	
}

//DOWN
if(keyboard_check(ord("S")) ||
	keyboard_check(vk_down)) {
	global.keyDOWN = true;
} else {
	global.keyDOWN = false;	
}



