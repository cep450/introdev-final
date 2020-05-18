

//controlling screenshake and sizing the view- zooming in and out
//maybe also wraparound?

viewCapThresh = 5;


viewcenterx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
viewcentery = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);

//how fast we're moving the camera (lower values = faster tho)
transitionSpeed = 0.6;

resizePercent = 0.90; //how fast we're moving to the new zoom size
resizeSnapThresh = 1; //if it's 'close enough', snap to it already

//threshold for shifting the screen based on player position... imagine the player is
//bounded by a box, and moves the box by pushing against the edges
playerxthresh = 0.12;
playerythresh = 0.12;

baseresx = 80;
baseresy = 45;
targetresx = baseresx;
targetresy = baseresy;

targetreslevel = 0;
maxreslevel = 5;


shakemag = 0;

shakedecay = 0.5;


wrapthreshold = 10;
wrapshift = round(room_width / 2);





