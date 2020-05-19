///@desc spawn(obj_type, distPadding, distMult)
var v_objtype = argument0;
var v_distPadding = argument1;
var v_distMult = argument2;

var v_width_half = camera_get_view_width(view_camera[0]) / 2;
var v_height_half = camera_get_view_height(view_camera[0]) / 2;
var spawnDistX = v_width_half + v_distPadding + irandom(v_width_half * v_distMult);
var spawnDistY = v_height_half + v_distPadding + irandom(v_width_half * v_distMult);
spawnDistX *= choose(-1, 1);
spawnDistY *= choose(-1, 1);
instance_create_layer(global.PLAYER.x + spawnDistX, global.PLAYER.y + spawnDistY, "Instances_1", v_objtype);
	