


draw_set_color(c_white);

if(drawstats) {
	
	//TODO vars instead of hardcoding
	draw_text_transformed(15, 15, tostring(strNumKrill, numKrill), 2, 2, 0);
	draw_text_transformed(350, 15, tostring(strMostKrill, mostKrill), 2, 2, 0);
	draw_text_transformed(750, 15, tostring(strAllKrill, allKrill), 2, 2, 0);
	draw_text_transformed(15, 60, tostring(strTimeSurvived, timeSurvived), 1.5, 1.5, 0);
	
}

if(drawendstats) {
	
	draw_text_transformed(300, 200, tostring(strMostKrill, mostKrill), 3.5, 3.5, 0);
	draw_text_transformed(300, 270, tostring(strAllKrill, allKrill), 3.5, 3.5, 0);
	draw_text_transformed(300, 340, tostring(strTimeSurvived, timeSurvived), 3.5, 3.5, 0);
	draw_text_transformed(300, 410, tostring(strFish, killsEn[2]), 3.5, 3.5, 0);
	
	
}

if(drawhelp) {
	var str = "AMASS KRILL ALLIES BY SWIMMING NEAR THEM. FISH EAT KRILL, BUT YOU CAN CLICK TO SHOOT, AND IT'S NOT OVER 'TIL THEY'VE DEVOURED EVERY LAST ONE OF YOU.";
	draw_text_ext_transformed(140, 230, str, 30, 300, 2.6, 2.6, 0);
}



