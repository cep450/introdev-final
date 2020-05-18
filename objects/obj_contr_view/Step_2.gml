/// @description update pos, wrap around, screenshake


//UPDATE BASED ON PLAYER POSITION

//do we need to update?
var leftboundpos = viewcenterx - (camera_get_view_width(view_camera[0]) * playerxthresh);
var rightboundpos = viewcenterx + (camera_get_view_width(view_camera[0]) * playerxthresh);
var upboundpos = viewcentery - (camera_get_view_height(view_camera[0]) * playerythresh);
var downboundpos = viewcentery + (camera_get_view_height(view_camera[0]) * playerythresh);

var targetcenterx = viewcenterx;
var targetcentery = viewcentery;
if(global.PLAYER.x < leftboundpos) {
	//going to the left
	targetcenterx += global.PLAYER.x - leftboundpos;
	
} else if(global.PLAYER.x > rightboundpos) {
	//going to the right
	targetcenterx += global.PLAYER.x - rightboundpos;
}
if(global.PLAYER.y < upboundpos) {
	//going up
	targetcentery += global.PLAYER.y - upboundpos;
	
} else if(global.PLAYER.y > downboundpos) {
	//going down
	targetcentery += global.PLAYER.y - downboundpos;
}

//finally, send where we're putting the view towards the target
viewcenterx = (targetcenterx * (1 - transitionSpeed)) + (viewcenterx * transitionSpeed);
viewcentery = (targetcentery * (1 - transitionSpeed)) + (viewcentery * transitionSpeed);



//RESIZE?

if(targetreslevel < maxreslevel && obj_contr_game.numKrill > scr_getResThresh(targetreslevel + 1)) {
	//if we need to size up... (won't if it'd go over max level)
	targetreslevel++;
	targetresx = baseresx * power(2, targetreslevel);
	targetresy = baseresy * power(2, targetreslevel);
} else if(obj_contr_game.numKrill < scr_getResThresh(targetreslevel)) {
	//if we need to size down...
	targetreslevel--;
	targetresx = baseresx * power(2, targetreslevel);
	targetresy = baseresy * power(2, targetreslevel);
}

//do we need to resize the window to get to the target?
if(camera_get_view_width(view_camera[0]) != targetresx) {
	
	//difference between what we have and what we want
	var xResDifference = targetresx - camera_get_view_width(view_camera[0]);
	if(abs(xResDifference) > resizeSnapThresh) {
		var yResDifference = targetresy - camera_get_view_height(view_camera[0]);
		var newWidth = targetresx + (xResDifference * resizePercent);
		var newHeight = targetresy + (yResDifference * resizePercent);
		camera_set_view_size(view_camera[0], newWidth, newHeight);
	} else {
		//close enough, snap already
		camera_set_view_size(view_camera[0], targetresx, targetresy);
	}
}




//set the pos
var viewxcorner = viewcenterx - (camera_get_view_width(view_camera[0]) / 2);
var viewycorner = viewcentery - (camera_get_view_height(view_camera[0]) / 2);


//WRAPAROUND?
var wrapsign = 0;
if(viewxcorner < wrapthreshold) {
	//exiting on the left
	wrapsign = 1;
	
} else if(viewxcorner + camera_get_view_width(view_camera[0]) > room_width - wrapthreshold) {
	//exiting on the right
	wrapsign = -1;
}

if(wrapsign != 0) {
	//we need to wrap around! or, really, just move everything to the center.
	print("doing fake wrap around");
	
	//find distance to move
	var move = round((room_width / 2) - (camera_get_view_width(view_camera[0]) / 2)) * wrapsign;
	
	//move player, krill, enemy, bullet, ect instances
	with(obj_par_wraps) {
		x += move;	
	}
	
	//and move the camera to match
	viewcenterx += move;
	
}


//cap at the top and bottom
viewycorner = max(viewycorner, viewCapThresh);
viewycorner = min(viewycorner, room_height - viewCapThresh - camera_get_view_height(view_camera[0]));




//SCREENSHAKE
//do screenshake

//TODO

//shake decay
shakemag = round(shakemag * shakedecay);//TODO scfdhs vlambeer curve






//FINALLY... ACTUALLY SET THE VIEW
camera_set_view_pos(view_camera[0], viewxcorner, viewycorner);



