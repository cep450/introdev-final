/// @description draw crosshair if mouse


if(global.controlWith == controlstate.mouse) {
	
	if(mouse_check_button(mb_any)) {
		//pressing down, draw pressed down sprite
		draw_sprite(spr_crosshairs, 1, mouse_x, mouse_y);
		
	} else {
		//not pressing down
		draw_sprite(spr_crosshairs, 0, mouse_x, mouse_y);
	}
	
}






