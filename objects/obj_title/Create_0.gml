
draw = true;

text = "KRILL 'EM ALL!!!";

colorfront = merge_color(c_red, c_maroon, 0);
colorback = merge_color(c_red, c_maroon, 0.8);

font = fnt_title;
scale = 10;
angle = 7;

xpos = camera_get_view_width(view_camera[0]) * 0.2 + 15;
ypos = camera_get_view_height(view_camera[0]) * 0.20 + 55;
xoffset = 8;
yoffset = 6;

animatetimer = -pi;
animateincrement = 0.04;
animatethresh = pi;
scalewiggle = 0.5;
anglewiggle = 5;
xwiggle = scale * (angle + anglewiggle * 2) * 0.05;
ywiggle = scale * (angle + anglewiggle * 2) * 0.22;

timer2thresh = 20;
timer2 = 0;
