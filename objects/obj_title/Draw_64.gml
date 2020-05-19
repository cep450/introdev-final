
if(draw) {

	if(animatetimer > animatethresh) {
		animatetimer = animatethresh;
		animateincrement = -animateincrement;
	} else if(animatetimer < 0) {
		animatetimer = 0;
		animateincrement = -animateincrement;
	} else {
		animatetimer += animateincrement;	
	}

	var scalemod = scale;//+ (scalewiggle * animatetimer);
	var anglemod = angle + (anglewiggle * cos(animatetimer));
	var xmod = xpos - (xwiggle * cos(animatetimer));
	var ymod = ypos + (ywiggle * cos(animatetimer)); //trying to account for angle
	//back
	draw_set_color(colorback);
	draw_set_font(font);
	draw_text_transformed(xmod, ymod, text, scalemod, scalemod, anglemod);

	//front
	xmod -= xoffset;
	ymod -= yoffset;
	draw_set_color(colorfront);
	draw_text_transformed(xmod, ymod, text, scalemod, scalemod, anglemod);

	if(timer2 > timer2thresh) {
		timer2 = 0;
		var temp = colorback;
		colorback = colorfront;
		colorfront = temp;
	} else {
		timer2++;	
	}

}