/// @description Insert description here
// You can write your code in this editor


//draw the gun
var flip = 1;
if(aimAngle < 90 || aimAngle > 270) {
	flip = -1;
}
draw_sprite_ext(spr_gun, 1, x, y, 1, 1 * flip, aimAngle + 180, c_white, 1);

draw_self();
