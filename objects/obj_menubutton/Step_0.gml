/// @description Insert description here
// You can write your code in this editor


if(draw && selected) {
	
	if(down != noone && global.keyDOWN) {
		selected = false;
		down.selected = true;
		audio_play_sound(snd_switch, 10, false);
	} else if(up != noone && global.keyUP) {
		selected = false;
		up.selected = true;
		audio_play_sound(snd_switch, 10, false);
	} else if(global.keySELECT) {
		obj_gamestate.sendToState = sendTo;
		audio_play_sound(snd_select, 10, false);
	}
	
}








