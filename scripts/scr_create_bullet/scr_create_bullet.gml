///@description scr_create_bullet(x, y, angle, sprite, spawndist)

var v_x = argument[0];
var v_y = argument[1];
var v_angle = argument[2];
var v_sprite = argument[3];
var v_spawndist = argument[4];

var v_vec_x = cos(degtorad(v_angle));
var v_vec_y = sin(degtorad(v_angle));

//moves it "forward" a bit so like it's coming out of the end of the gun
v_x += v_vec_x * v_spawndist;
v_y += v_vec_y * v_spawndist;

var bullet = instance_create_layer(v_x, v_y, "Instances_1", obj_bullet);

with(bullet) {
	//get the following from the angle given:
	//unit direction vector- these are decimal "percents" to multiply by
	x_vec_frac = v_vec_x;
	y_vec_frac = v_vec_y;
	sprite_index = v_sprite;
}
