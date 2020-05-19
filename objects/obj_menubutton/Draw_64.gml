/// @description Insert description here
// You can write your code in this editor



if(draw) {
	
	draw_set_font(font);
	
	if(!gotHomeX) {
		//TODO ???????????????? why is string_width such a small magnitude???
		homexpos = (display_get_gui_width() / 2) - (string_width(text) * 2.5);
		print(homexpos);
		xpos = homexpos;
		gotHomeX = true;
	}
	
	
	
	if(animatetimer > animatethresh) {
		animatetimer = animatethresh;
		animateincrement = -animateincrement;
	} else if(animatetimer < 0) {
		animatetimer = 0;
		animateincrement = -animateincrement;
	} else {
		animatetimer += animateincrement;	
	}
	
	var scalemod = scale;
	var xmod = xpos;
	var ymod = ypos;
	if(selected) {
		var wiggle = scalewiggle * (animatetimer / animatethresh);
		scalemod += wiggle;
		xmod -= wiggle * string_width(text) / 2;
		ymod -= wiggle * string_height(text) / 2;
	}
	
	draw_set_color(colorback);
	draw_text_transformed(xmod + textoffsetx, ymod + textoffsety, text, scalemod, scalemod, angle);
	draw_set_color(colorfront);
	draw_text_transformed(xmod, ymod, text, scalemod, scalemod, angle);
	
}