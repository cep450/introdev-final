///@desc scr_getResThresh(reslevel)

var reslevel = argument0;

//return power(3, reslevel) - power(2, reslevel);
//like x^3 - x^2

//aaagh ill just do this myself
switch(reslevel) {
	case 0: return 1; //default
	case 1: return 2;
	case 2: return 11;
	case 3: return 30;
	case 4: return 55;
	case 5: return 100;
}