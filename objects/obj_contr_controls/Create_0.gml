
enum controlstate {
	mouse,
	controller	
}

global.controlWith = controlstate.mouse;

global.keyFIRE = false;
global.keySELECT = false;
global.keyBACK = false;
global.keyUP = false;
global.keyDOWN = false;
global.keyLEFT = false;
global.keyRIGHT = false;
/*
set to true in begin step if they're pressed.
both keyboard and controller keys.
up/down/left/right used for movement in mouse mode, ignored for movement in
controller mode cause that uses the stick but are still used on
the controller for the start menu
tldr:
controllerstate just means what it's using to aim and move
everything else can be either
*/


