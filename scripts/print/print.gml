
//if(global.debug) {

var str = string(argument[0]);
for(var i = 1; i < argument_count; i++) {
	str = str + string(argument[i]) + " ";
}

show_debug_message(str);

//}