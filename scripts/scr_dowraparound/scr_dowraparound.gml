
print("called do wraparound");

var shift = round(room_width / 2);
var vsign = 0;

//should only be called when the room needs to wrap
if(global.PLAYER.x < room_width / 2) {
	//if the player is exiting on the left
	vsign = 1;
} else {
	//else, the player is exiting on the right
	vsign = -1;
}

//shift everything over by that amount in the correct direction
with(obj_par_enemy) {
	x += shift * vsign;
}
with(obj_player) {
	x += shift * vsign;
}

//as well as the camera
var camerax = camera_get_view_x(view_camera[0]);
camerax += shift * vsign;
camera_set_view_pos(view_camera[0], camerax, camera_get_view_y(view_camera[0]));


