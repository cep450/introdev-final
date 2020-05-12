

text = "KRILL 'EM ALL!!!";

colorfront = c_maroon;
colorback = c_red;

font = fnt_title;
scale = 10;
angle = 7;

xpos = camera_get_view_width(view_camera[0]) * 0.2 + 15;
ypos = camera_get_view_height(view_camera[0]) * 0.20 + 45;
xoffset = 8;
yoffset = 6;

animatetimer = -pi;
animateincrement = 0.04;
animatethresh = pi;
scalewiggle = 0.5;
anglewiggle = 5;
xwiggle = scale * (angle + anglewiggle * 2) * 0.05;
ywiggle = scale * (angle + anglewiggle * 2) * 0.22;

timer2thresh = 10;
timer2 = 0;
